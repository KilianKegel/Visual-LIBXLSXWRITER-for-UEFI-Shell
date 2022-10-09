# Visual-LIBXLSXWRITER-for-UEFI-Shell
Getting started with Visual Studio 2022 for UEFI Shell and [**libxlsxwriter**](https://github.com/jmcnamara/libxlsxwriter#libxlsxwriter)
![visualUefi](visualUefiWideXLSXWriter.png)

## Goal
Get John McNamara's  [**libxlsxwriter**](https://github.com/jmcnamara/libxlsxwriter#libxlsxwriter)
library including all additional third party libraries, buildable and running in Microsoft VisualStudio 2022.
* **zlib** https://github.com/madler/zlib
* **md5**, **minizip** and **tmpfileplus** included in the libxlsxwriter source tree https://github.com/jmcnamara/libxlsxwriter/tree/main/third_party

## Approach
The **Visual-LIBXLSXWRITER-for-UEFI** project is just a compilation
of all the above mentioned libraries into one single VisualStudio 2022 *solution*,
that builds all libraries at once.

Each particular library needed to use John McNamara's  [**libxlsxwriter**](https://github.com/jmcnamara/libxlsxwriter#libxlsxwriter)
in an application is included in a monolithic library project **Visual-LIBXLSXWRITER-for-UEFI**.
 
**NOTE:** For UEFI Shell projects an additional library is needed: [**Visual-LIBWIN32-for-UEFI**](https://github.com/KilianKegel/Visual-LIBWIN32-for-UEFI)

**NOTE:** The librarie's sourcecodes are pulled in as git subprojects.
***There isn't any modification of the original sourcecode of*** **libxlsxwriter**, **zlib**, **md5**, **minizip** ***and*** **tmpfileplus.**

## HowTo
### [**libxlsxwriter**](https://github.com/jmcnamara/libxlsxwriter#libxlsxwriter) usage
https://github.com/jmcnamara/libxlsxwriter#libxlsxwriter
http://libxlsxwriter.github.io/

### **Visual-LIBXLSXWRITER-for-UEFI** usage options
1. binary format: use **Visual-LIBXLSXWRITER-for-UEFI.lib** in your VS2022 project
2. source format: import **Visual-LIBXLSXWRITER-for-UEFI.vcxproj** VS2022 ***project file*** into a VS2022 solution.
   This option requires that the entire [**Visual-LIBXLSXWRITER-for-UEFI-Shell**](https://github.com/KilianKegel/Visual-LIBXLSXWRITER-for-UEFI-Shell)
   solution is availale on the build machine.

## Revision history
### 20221009/2
* add dedicated Debug/Release configurations
### 20221009
* provide library project **Visual-LIBXLSXWRITER-for-UEFI.vcxproj** that merges
  **libxlsxwriter**, **zlib**, **md5**, **minizip** and **tmpfileplus** into a monolithic library binary:
  **Visual-LIBXLSXWRITER-for-UEFI.lib**
### 20221001
* simplify interaction of various **VISUAL-xyz** components, unitize directory structure 
  and import/export interface for those solutions
    * output folder for **Configuration Type: static Library** is commonly **$(SolutionPath)**\\***lib***
      to share one single *library folder* for all imported subprojects
    * adjust include path to be **$(ProjectDir)** relative

### 20220505
* suppress build warning *MSB8012* due to redirected library output path

### 20220427
* initial revision
