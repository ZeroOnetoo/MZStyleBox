# MZStyleBox

快速集成九宫格

![](/Users/haiyisoft/Desktop/tesl.gif)

StyleBox 实现方法
```
/** 九宫格 @parameter 列数：arrange 行数：rank*/
- (instancetype)initWithFrame:(CGRect)frame
Arrange:(NSInteger)arrange
Rank:(NSInteger)rank;
```
```
- (instancetype)initWithFrame:(CGRect)frame Arrange:(NSInteger)arrange Rank:(NSInteger)rank{
self = [super initWithFrame:frame];
if (self) {
_arrange = arrange; //列数
_rank = rank;       //行数
[self creatUI];
}
return self;
}

```
开发的接口
![](/Users/haiyisoft/Library/Containers/com.tencent.qq/Data/Library/Application Support/QQ/Users/869642706/QQ/Temp.db/E74CC25B-5DF7-428F-B12E-94D9A679A7EF.png
)
可以根据项目的需求更改显示的效果

点击触发代理方法，参数index 是从零开始，可以在做跳转界面或其他处理
![](/Users/haiyisoft/Library/Containers/com.tencent.qq/Data/Library/Application Support/QQ/Users/869642706/QQ/Temp.db/2F967F42-21A3-4C31-896E-0696644C199E.png)

这是本人用XIB定制的一个uicollectionViewCell的文件，也可以根据需求更改
所以这个库是没有封装的这么全面，但是灵活性强，可以稍做修改就得到想要的效果
![](/Users/haiyisoft/Library/Containers/com.tencent.qq/Data/Library/Application Support/QQ/Users/869642706/QQ/Temp.db/67910703-782E-4309-B76E-0913D0AC2B3F.png)
