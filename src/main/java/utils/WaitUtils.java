package utils;

import config.ConfigManager;
import enums.WaitStrategy;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class WaitUtils {
    public static Duration getTimeout() {
        String timeoutValue = ConfigManager.getProperty("timeout");
        int timeoutIntSeconds = (timeoutValue != null) ? Integer.parseInt(timeoutValue) : 10;
        return Duration.ofSeconds(timeoutIntSeconds);


    }

    public static void applyGlobalWait() {
        boolean enableWait = Boolean.parseBoolean(ConfigManager.getProperty("EnableWait"));
        int timeoutInSecond = Integer.parseInt(ConfigManager.getProperty("waitInSeconds"));
        System.out.println("Is wait enable :" + enableWait);
        System.out.println("Time in seconds:" + timeoutInSecond);
        if (enableWait && timeoutInSecond > 0) {
            try {
                Thread.sleep(timeoutInSecond * 1000L);

            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                System.err.println("Global wait interrupted " + e.getMessage());

            }
        }

    }


    public static WebElement applyWait(WebDriver driver, WebElement webElement, WaitStrategy waitStrategy) {
        WebDriverWait wait = new WebDriverWait(driver, getTimeout());
        switch (waitStrategy) {
            case CLICKABLE:
                return wait.until(ExpectedConditions.elementToBeClickable(webElement));
            case VISIBLE:
                return wait.until((ExpectedConditions.visibilityOf(webElement)));
            case NONE:
            default:
                return webElement;

        }
    }

    public static WebElement waitForPresence(WebDriver driver, By element) {
        WebDriverWait wait = new WebDriverWait(driver, getTimeout());
        return wait.until(ExpectedConditions.presenceOfElementLocated(element));

    }

}
