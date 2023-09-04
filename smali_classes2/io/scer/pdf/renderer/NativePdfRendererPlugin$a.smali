.class final Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;
.super Ljava/lang/Object;
.source "NativePdfRendererPlugin.kt"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/scer/pdf/renderer/NativePdfRendererPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0007H\u0016J\u0012\u0010\u000e\u001a\u00020\u00072\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000cH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/scer/pdf/renderer/NativePdfRendererPlugin$MethodResultWrapper;",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "methodResult",
        "(Lio/flutter/plugin/common/MethodChannel$Result;)V",
        "handler",
        "Landroid/os/Handler;",
        "error",
        "",
        "errorCode",
        "",
        "errorMessage",
        "errorDetails",
        "",
        "notImplemented",
        "success",
        "result",
        "native_pdf_renderer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lio/flutter/plugin/common/MethodChannel$Result;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1
    .param p1    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "methodResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;->b:Landroid/os/Handler;

    return-void
.end method

.method private static final a(Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {p0, p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;)V
    .locals 0

    invoke-static {p0}, Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;->e(Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;)V

    return-void
.end method

.method public static synthetic c(Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;->a(Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;->f(Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;Ljava/lang/Object;)V

    return-void
.end method

.method private static final e(Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {p0}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    return-void
.end method

.method private static final f(Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;->a:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;->b:Landroid/os/Handler;

    new-instance v1, Lio/scer/pdf/renderer/e;

    invoke-direct {v1, p0, p1, p2, p3}, Lio/scer/pdf/renderer/e;-><init>(Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notImplemented()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;->b:Landroid/os/Handler;

    new-instance v1, Lio/scer/pdf/renderer/d;

    invoke-direct {v1, p0}, Lio/scer/pdf/renderer/d;-><init>(Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;->b:Landroid/os/Handler;

    new-instance v1, Lio/scer/pdf/renderer/f;

    invoke-direct {v1, p0, p1}, Lio/scer/pdf/renderer/f;-><init>(Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
