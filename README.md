# XZCategoryTool

### 测试创建字的 cocoapods项目,封装了一些常用的类,可以通过
`pod 'XZCategoryTool','~>0.0.4'`
来集成,在工程中导入`#import <XZCategoryTool/XZCategoryTool.h>`使用分类

Demo:

```Object-c
UIButton *btn=[UIButton btnWithNormaLTitle:@"按钮1"
                          normalTitleColor:[UIColor blackColor]
                                 backImage:nil
                                 titleFont:16];

```

```Object-c
UILabel *label=[UILabel labelWithText:@"文本1"
                                 font:13
                                color:[UIColor yellowColor]];

```

```Object-c
/**
 将一个模型转换为字典
 
 @param object 传入要转换的模型
 
 @return 结果字典
 */
+ (NSDictionary *)getDictWithClass:(NSObject *)object;

```

```Object-c
/**
 四舍五入
 
 @param number 保留的小数位数
 @param doble  要四舍五入值
 
 @return 返回结果
 */
+ (NSString *) decimalwithFormat:(NSInteger )number
                           doble:(double)doble;

```

```Object-c
/**
 正则判断手机号码地址格式
 
 @param mobileNum 输入的手机号
 
 @return 返回结果
 */
+ (BOOL)isMobileNumber:(NSString *)mobileNum;

```

```Object-c
/**
 判断邮箱是否合法
 
 @param email 输入需要判断的邮箱
 
 @return 返回结果
 */
+ (BOOL) validateEmail:(NSString *)email;

```

```Object-c
/**
 判断输入的车牌是否合法
 
 @param carNo 输入的车牌
 
 @return 返回结果
 */
+ (BOOL) validateCarNo:(NSString *)carNo;

```
