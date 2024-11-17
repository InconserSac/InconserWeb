package TestUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import java.time.Duration;

public class InicioSesionTest {

    private WebDriver driver;
    private WebDriverWait wait;

    @Before
    public void setUp() {
        // Configurar el path del ChromeDriver
        System.setProperty("webdriver.chrome.driver", "C:\\Users\\Johan\\OneDrive\\Documentos\\NetBeansProjects\\PruebaPOO\\chromedriver.exe");

        // Añadir argumentos de ChromeOptions
        ChromeOptions options = new ChromeOptions();
        options.addArguments("--remote-allow-origins=*");

        // Crear instancia del WebDriver con opciones
        driver = new ChromeDriver(options);

        // Establecer la propiedad del sistema para usar el cliente HTTP JDK
        System.setProperty("webdriver.http.factory", "jdk-http-client");

        // Configurar espera explícita
        wait = new WebDriverWait(driver, Duration.ofSeconds(30));  // Aumentar el tiempo de espera
    }

    @Test
    public void testInicioSesion() {
        // Navegar a la página de inicio de sesión
        driver.get("http://localhost:8080/PruebaPOO/view/login.jsp");

        // Registro de log para verificar la URL actual
        System.out.println("Current URL: " + driver.getCurrentUrl());

        // Rellenar el formulario de inicio de sesión
        WebElement username = wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("username")));
        username.sendKeys("tu_usuario");

        WebElement password = wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("password")));
        password.sendKeys("tu_contraseña");

        // Enviar el formulario
        WebElement submitButton = wait.until(ExpectedConditions.elementToBeClickable(By.cssSelector("button[type='submit']")));
        submitButton.click();

        // Verificar la redirección a la página de bienvenida o panel de usuario
        wait.until(ExpectedConditions.urlToBe("http://localhost:8080/PruebaPOO/view/welcome.jsp"));
    }

    @After
    public void tearDown() {
        // Cerrar el navegador
        if (driver != null) {
            driver.quit();
        }
    }
}
