.class public Lcom/flutter_webview_plugin/ObservableWebView;
.super Landroid/webkit/WebView;
.source "ObservableWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flutter_webview_plugin/ObservableWebView$OnScrollChangedCallback;
    }
.end annotation


# instance fields
.field private a:Lcom/flutter_webview_plugin/ObservableWebView$OnScrollChangedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getOnScrollChangedCallback()Lcom/flutter_webview_plugin/ObservableWebView$OnScrollChangedCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/flutter_webview_plugin/ObservableWebView;->a:Lcom/flutter_webview_plugin/ObservableWebView$OnScrollChangedCallback;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "l",
            "t",
            "oldl",
            "oldt"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2
    iget-object v0, p0, Lcom/flutter_webview_plugin/ObservableWebView;->a:Lcom/flutter_webview_plugin/ObservableWebView$OnScrollChangedCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/flutter_webview_plugin/ObservableWebView$OnScrollChangedCallback;->onScroll(IIII)V

    :cond_0
    return-void
.end method

.method public setOnScrollChangedCallback(Lcom/flutter_webview_plugin/ObservableWebView$OnScrollChangedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "onScrollChangedCallback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/flutter_webview_plugin/ObservableWebView;->a:Lcom/flutter_webview_plugin/ObservableWebView$OnScrollChangedCallback;

    return-void
.end method
