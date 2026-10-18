#import "@preview/tsinswreng-auto-heading:0.1.0": auto-heading
#let H = auto-heading;
\-\-\-

name: tsinswreng-csjson

description: Tsinswreng.CsJson庫使用規範

\-\-\-


````cs

[Doc("""
完整 JSON 序列化接口：與官方 System.Text.Json.JsonSerializer 的公開 API 面逐一對應，
只是把靜態類改為實例接口（方便 DI 注入）。方法名、重載、參數形狀照抄官方，不增不減。
TypeInfo/context 的來源由調用方以 JsonTypeInfo / JsonSerializerContext / JsonSerializerOptions 傳入。
只帶 JsonSerializerOptions 的重載與官方一樣標記 RequiresUnreferencedCode / RequiresDynamicCode：
AOT 下必須掛源生成 TypeInfoResolver，否則走反射路徑（編譯期 IL 警告）。
""")]
public interface IJsonSerializer{
	
	[Doc(@$"API函數 不傳options參數時默認用此")]
	public JsonSerializerOptions? Options{get;set;}
	
	//從這之後的API都是照搬標準庫的API設計 沒甚麼好看的
	
}
````
