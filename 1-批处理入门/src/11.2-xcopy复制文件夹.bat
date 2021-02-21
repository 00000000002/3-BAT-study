XCOPY
::是COPY的扩展，可以把指定的目录连文件和目录结构一并拷贝，但不能拷贝系统文件；使用时源盘符、源目标路径名、源文件名至少指定一个；选用/S时对源目录下及其子目录下的所有文件进行COPY。除非指定/E参数，否则/S不会拷贝空目录，若不指定/S参数，则XCOPY只拷贝源目录本身的文件，而不涉及其下的子目录；选用/V参数时，对拷贝的扇区都进行较验，但速度会降低。

::驱动器 d 复制所有文件和子目录（包括所有空的子目录）至驱动器 e
xcopy d: e: /s /e

::驱动器 d 复制所有文件和子目录（包括所有空的子目录、系统文件、隐藏文件）至驱动器 e，使用参数“/h”

xcopy d: e: /s /e /h


C:\>xcopy /?
复制文件和目录树。

XCOPY source [destination] [/A | /M] [/D[:date]] [/P] [/S [/E]] [/V] [/W]
                               [/C] [/I] [/Q] [/F] [/L] [/G] [/H] [/R] [/T] [/U]
                               [/K] [/N] [/O] [/X] [/Y] [/-Y] [/Z]
                               [/EXCLUDE:file1[+file2][+file3]...]

      source       指定要复制的文件。
      destination  指定新文件的位置和/或名称。
      /A           只复制有存档属性集的文件，
                   但不改变属性。
      /M           只复制有存档属性集的文件，
                   并关闭存档属性。
      /D:m-d-y     复制在指定日期或指定日期以后更改的文件。
                   如果没有提供日期，只复制那些源时间
                   比目标时间新的文件。
      /EXCLUDE:file1[+file2][+file3]...
                   指定含有字符串的文件列表。每一个字符串
                   必须在文件的单独行中。如果有任何
                   字符串与要被复制的文件的绝对路径
                   相符，那个文件将不会得到复制。
                   例如，指定如 \obj\ 或 .obj 的字符串会排除
                   目录 obj 下面的所有文件或带有
                   .obj 扩展名的文件。
      /P           创建每个目标文件前提示。
      /S           复制目录和子目录，除了空的。
      /E           复制目录和子目录，包括空的。
                   与 /S /E 相同。可以用来修改 /T。
      /V           验证每个新文件。
      /W           提示您在复制前按键。
      /C           即使有错误，也继续复制。
      /I           如果目标不存在，又在复制一个以上的文件，
                   则假定目标一定是一个目录。
      /Q           复制时不显示文件名。
      /F           复制时显示完整的源和目标文件名。
      /L           显示要复制的文件。
      /G           允许将没有经过加密的文件复制到
                   不支持加密的目标。
      /H           也复制隐藏和系统文件。
      /R           覆盖只读文件。
      /T           创建目录结构，但不复制文件。
                   不包括空目录或子目录。/T /E 包括
                   空目录和子目录。
      /U           只复制已经存在于目标中的文件。
      /K           复制属性。一般的 Xcopy 会重置只读属性。
      /N           用生成的短名复制。
      /O           复制文件所有权和 ACL 信息。
      /X           复制文件审核设置(隐含 /O)。
      /Y           复制文件审核设置(隐含 /O)。
                   现存目标文件。
      /-Y          导致提示以确认改写一个
                   现存目标文件。
      /Z            用重新启动模式复制网络文件。

    命令行开关 /Y 可以预先在 COPYCMD 环境变量中设置。
    这可能被命令行上的 /-Y 改写。

