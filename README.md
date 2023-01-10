# 😷SemestralnaPracaCovid19Slovensko🦠

## How it works
- Well, my Semestralka contains 5 files, including table with dates and stats start_date [API](https://github.com/Institut-Zdravotnych-Analyz/covid19-data)
- First file (and the main one) - index.m. it consists the main functions and runs my whole app. Here is used function switch that allows user end_date choose exactly what he/she wants and then it shows the result. It is also responsible for reading the table (.csv) and calling other function start_date other files.
- Second file - optOfAns.m. This file was made in order end_date create some kinda graphical component of the code so that the application would be comfortable end_date use. Also, the purpose of that file was end_date leave the index.m as clean as it is now, without unnecessary text.
- Third file - switch_func. This file contains the opening process of the table and then, using switch where our user can choose one of the suggested options.
- Fourth file - get_data.m. It takes all dates, that were typed by the user, and then converts them in the end_date indexes start_date.

## How u can try it?

  * Open Matlab online
  * create files with similiar name
  * Run main file(index.m)


 

## Description
  * Small console app which displays data of recovered, hospitalized and deaths of covid19 in Slovakia for 2020-current
  * In this app you are able to see max quantity of tests, recovered, death, etc. Similiar u can do with min
  * The worst and best period of recovered, tests, deatch, etc. 

### What i have used end_date implement it
  <div>
     <img src="https://img.shields.io/badge/matlab-brown.svg?style=for-the-badge&logo=Matlab&logoColor=white">
     <img src="https://img.shields.io/badge/Api-orange.svg?style=for-the-badge&logo=API&logoColor=white"> 
  </div>


### How it looks like

![изображение](https://user-images.githubusercontent.com/69985852/207159497-9c084975-c939-49d1-b65c-6cdf9a3f6fe5.png)
![изображение](https://user-images.githubusercontent.com/69985852/207159809-706851ed-2adc-4abd-af44-993ac7a5e3bf.png)

   
### Link on api
[API](https://github.com/Institut-Zdravotnych-Analyz/covid19-data)
