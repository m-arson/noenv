from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from webdriver_manager.chrome import ChromeDriverManager

import datetime
import time

def capture_prognosis():
    options = Options()
    options.add_argument('--ignore-certificate-errors')
    options.add_argument("--headless")
    driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()), options=options)
    driver.maximize_window()
    driver.get("https://192.168.100.147/Prognosis/Dashboard/Update%20Grafik%20Payments%20OTI%20SVM?defaultnode=%5cBNIDC&rptdatabasenode=%5cBNIDC&defaultdbnode=1&defaultassociate=%23AllAssoc")
    driver.execute_script("document.getElementById('UserName').value = 'otiapp';")
    driver.execute_script("document.getElementById('Password').value = 'Bni46app#';")
    driver.execute_script("document.getElementById('loginButton').click();")
    time.sleep(2)
    driver.execute_script("document.querySelector('[dojoattachpoint=\"toggleNode\"]').click();")
    time.sleep(2)
    driver.fullscreen_window()
    time.sleep(1)
    driver.get_screenshot_as_file("C:/Users/hp/Pictures/SS/screenshot.png")

def send_wa(timee):
    options = Options()
    options.add_argument("--user-data-dir=C:/Users/hp/AppData/Local/Google/Chrome/User Data/Profile 3")
    options.add_experimental_option("excludeSwitches", ["enable-automation"])
    options.add_experimental_option('useAutomationExtension', False)
    options.add_argument("--headless")
    driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()), options=options)
    driver.maximize_window()
    driver.get('https://web.whatsapp.com')
    time.sleep(5)
    driver.find_element(By.XPATH, '//*[@id="pane-side"]/div/div/div/div[11]').click()
    time.sleep(1)
    driver.find_element(By.XPATH, '//*[@id="main"]/footer/div[1]/div/span[2]/div/div[1]/div[2]/div/div/span').click()
    time.sleep(1)
    filee = driver.find_element(By.XPATH, '//*[@id="main"]/footer/div[1]/div/span[2]/div/div[1]/div[2]/div/span/div/div/ul/li[1]/button/input')
    filee.send_keys("C:/Users/hp/Pictures/SS/screenshot.png")
    time.sleep(5)
    text = driver.find_element(By.XPATH, "//*[@id='app']/div/div/div[2]/div[2]/span/div/span/div/div/div[2]/div/div[1]/div[3]/div/div/div[2]/div[1]/div[2]")
    text.send_keys(f"Update pukul {timee}")
    time.sleep(5)
    driver.find_element(By.XPATH, '//*[@id="app"]/div/div/div[2]/div[2]/span/div/span/div/div/div[2]/div/div[2]/div[2]/div/div').click()
    time.sleep(5)
    driver.quit()

def main():
    check_minutes = int(datetime.datetime.now().strftime("%M"))
    if check_minutes == 0:
        print("Preparing...")
        timee = datetime.datetime.now().strftime('%H:%M')
        capture_prognosis()
        send_wa(timee)
        print("Sending...")

if __name__ == "__main__":
    while True:
        main()
        time.sleep(1)
