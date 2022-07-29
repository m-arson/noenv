from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.support.ui import WebDriverWait

import datetime
import time

image_path = "C:/Users/Arson Marianus/OneDrive - Multipolar Technology/Pictures/screenshot.png"
chromedriver_path = "C:/Users/Arson Marianus/OneDrive - Multipolar Technology/Documents/chromedriver.exe"
profile_path1 = "C:/Users/Arson Marianus/AppData/Local/Google/Chrome/User Data/PronosisPath"
profile_path2 = "C:/Users/Arson Marianus/AppData/Local/Google/Chrome/User Data/WhatsAppPath"

def capture_prognosis():
    options = webdriver.ChromeOptions()
    options.add_argument("--headless")
    options.add_argument('--ignore-certificate-errors')
    options.add_argument(f"--user-data-dir={profile_path1}")
    options.add_experimental_option("excludeSwitches", ["enable-automation", "enable-logging"])
    options.add_experimental_option('useAutomationExtension', False)
    options.add_argument("window-size=1400, 800")
    driver = webdriver.Chrome(service=Service(chromedriver_path), options=options)
    driver.get("https://192.168.100.147/Prognosis/Dashboard/Update%20Grafik%20Payments%20OTI%20SVM?defaultnode=%5cBNIDC&rptdatabasenode=%5cBNIDC&defaultdbnode=1&defaultassociate=%23AllAssoc")
    time.sleep(10)
    driver.fullscreen_window()
    WebDriverWait(driver, timeout=2)
    driver.get_screenshot_as_file(image_path)
    time.sleep(2)
    driver.quit()

def send_to_whatsapp():
    options = webdriver.ChromeOptions()
    options.add_argument("--headless")
    options.add_argument(f"--user-data-dir={profile_path2}")
    options.add_experimental_option("excludeSwitches", ["enable-automation", "enable-logging"])
    options.add_experimental_option('useAutomationExtension', False)
    driver = webdriver.Chrome(service=Service(chromedriver_path), options=options)
    driver.get('https://web.whatsapp.com')
    try:
        WebDriverWait(driver, timeout=1200).until(lambda d: d.find_element(By.XPATH, "//*[@title='Testing']"))
        path_id = list([
            '//*[@title="Testing"]',
            '//*[@id="main"]/footer/div[1]/div/span[2]/div/div[1]/div[2]/div/div/span',
            '//*[@id="main"]/footer/div[1]/div/span[2]/div/div[1]/div[2]/div/span/div/div/ul/li[1]/button/input',
            '//*[@id="app"]/div/div/div[2]/div[2]/span/div/span/div/div/div[2]/div/div[1]/div[3]/div/div/div[2]/div[1]/div[2]',
            '//*[@id="app"]/div/div/div[2]/div[2]/span/div/span/div/div/div[2]/div/div[2]/div[2]/div/div'
        ])
        WebDriverWait(driver, timeout=10).until(lambda d: d.find_element(By.XPATH, path_id[0]))
        driver.find_element(By.XPATH, path_id[0]).click()
        WebDriverWait(driver, timeout=10).until(lambda d: d.find_element(By.XPATH, path_id[1]))
        driver.find_element(By.XPATH, path_id[1]).click()
        WebDriverWait(driver, timeout=10).until(lambda d: d.find_element(By.XPATH, path_id[2]))
        driver.find_element(By.XPATH, path_id[2]).send_keys(image_path)
        WebDriverWait(driver, timeout=10).until(lambda d: d.find_element(By.XPATH, path_id[3]))
        timee = datetime.datetime.now().strftime('%H:%M')
        driver.find_element(By.XPATH, path_id[3]).send_keys(f"Update pukul {timee}")
        WebDriverWait(driver, timeout=10).until(lambda d: d.find_element(By.XPATH, path_id[4]))
        driver.find_element(By.XPATH, path_id[4]).click()
        time.sleep(10)
    except:
        pass
    finally:
        driver.quit()

def main():
    capture_prognosis()
    send_to_whatsapp()

if __name__ == "__main__":
    main()
