<?php
use Facebook\WebDriver\WebDriverBy;
use Facebook\WebDriver\Remote\RemoteWebDriver;
use Facebook\WebDriver\Remote\DesiredCapabilities;
use PHPUnit\Framework\TestCase;
use Phinx\Console\PhinxApplication;
use Symfony\Component\Console\Input\StringInput;
use Symfony\Component\Console\Output\NullOutput;


class SmokeTest extends TestCase
{
    public function setUp()
    {
        $this->host = getenv('SELENIUM_HOST');
        $this->baseUrl = getenv('TEST_BASE_URL');
        $this->driver = RemoteWebDriver::create(
            $this->host, 
            DesiredCapabilities::chrome()
        );
    }

    public function tearDown()
    {
        $this->driver->quit();
    }

    public function testHelloIsPresent()
    {
        $this->driver->get($this->baseUrl);
        $main = $this->driver->findElement(WebDriverBy::cssSelector('main'));
        $this->assertEquals(
            'hello',
            trim($main->getText()),
            'Did not find "hello" string'
        );
    }
}

