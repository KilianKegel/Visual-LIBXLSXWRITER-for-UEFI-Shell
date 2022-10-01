# Visual-LIBXLSXWRITER-for-UEFI-Shell
Getting started with Visual Studio 2022 for UEFI Shell and [libxlsxwriter](https://github.com/jmcnamara/libxlsxwriter#libxlsxwriter)
![visualUefi](visualUefiWideXLSXWriter.png)

## Goal
Get John McNamara's  [libxlsxwriter](https://github.com/jmcnamara/libxlsxwriter#libxlsxwriter)
library including all additional third party libraries, buildable and running in Microsoft VisualStudio 2022.
* **zlib** https://github.com/madler/zlib
* **md5**, **minizip** and **tmpfileplus** included in the libxlsxwriter source tree https://github.com/jmcnamara/libxlsxwriter/tree/main/third_party

## Approach
The **Visual-LIBXLSXWRITER-for-UEFI-Shell** project is just a compilation
of all the above mentioned libraries into one single VisualStudio 2022 "solution"
*Visual-LIBXLSXWRITER-for-UEFI.sln*, that builds all libraries at once.

NOTE: The libraries sourcecode is pulled in as git subproject each.
***There is not any modification of the original sourcecode.***

## HowTo
https://github.com/jmcnamara/libxlsxwriter#libxlsxwriter
http://libxlsxwriter.github.io/

## Revision history
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
