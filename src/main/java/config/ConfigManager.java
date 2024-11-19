package config;

import enums.Environment;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class ConfigManager {

    public static final Properties properties = new Properties();
    public static final Logger logger = LogManager.getLogger(ConfigManager.class);

    private static void loadProperties() {
        try {

            // Load the base config under properties object
            FileInputStream baseConfig = new FileInputStream("src/main/resources/config/config.properties");
            properties.load(baseConfig);
            baseConfig.close();

            // Load the environment
            Environment env = Environment.valueOf(properties.getProperty("env").toUpperCase());
            String envConfigPath = "src/main/resources/config/" + env.name().toLowerCase() + "-config.properties";
            FileInputStream envConfig = new FileInputStream(envConfigPath);
            properties.load(envConfig);
            envConfig.close();
            logger.info("Configuration loaded for environment " + env);

        } catch (IOException e) {
            logger.error("Failed to load configuration. " + e);

            throw new RuntimeException("Configuration loading failed.");
        }
    }

    public static String getProperty(String key) {
        return properties.getProperty(key);
    }

    public static String getProperty(String key, String defaultValue) {
        return properties.getProperty(key, defaultValue);
    }

    public static Environment getEnvironment() {
        return Environment.valueOf(properties.getProperty("env").toUpperCase());
    }
}
