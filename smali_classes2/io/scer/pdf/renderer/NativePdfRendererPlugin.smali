.class public final Lio/scer/pdf/renderer/NativePdfRendererPlugin;
.super Ljava/lang/Object;
.source "NativePdfRendererPlugin.kt"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/scer/pdf/renderer/NativePdfRendererPlugin$Companion;,
        Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 #2\u00020\u0001:\u0002#$B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u001e\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u001e\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00132\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0018\u0010\u001b\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u001c\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u001d\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u001c\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u00132\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0018\u0010!\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\"\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lio/scer/pdf/renderer/NativePdfRendererPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "registrar",
        "Lio/flutter/plugin/common/PluginRegistry$Registrar;",
        "(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V",
        "documents",
        "Lio/scer/pdf/renderer/resources/DocumentRepository;",
        "pages",
        "Lio/scer/pdf/renderer/resources/PageRepository;",
        "closeDocumentHandler",
        "",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "closePageHandler",
        "onMethodCall",
        "rawResult",
        "openAssetDocument",
        "Lkotlin/Pair;",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/pdf/PdfRenderer;",
        "assetPath",
        "",
        "openDataDocument",
        "data",
        "",
        "openDocumentAssetHandler",
        "openDocumentDataHandler",
        "openDocumentFileHandler",
        "openFileDocument",
        "file",
        "Ljava/io/File;",
        "openPageHandler",
        "renderHandler",
        "Companion",
        "MethodResultWrapper",
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


# static fields
.field public static final Companion:Lio/scer/pdf/renderer/NativePdfRendererPlugin$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lio/flutter/plugin/common/PluginRegistry$Registrar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lio/scer/pdf/renderer/resources/DocumentRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lio/scer/pdf/renderer/resources/PageRepository;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/scer/pdf/renderer/NativePdfRendererPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/scer/pdf/renderer/NativePdfRendererPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->Companion:Lio/scer/pdf/renderer/NativePdfRendererPlugin$Companion;

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 1
    .param p1    # Lio/flutter/plugin/common/PluginRegistry$Registrar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "registrar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->a:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    .line 3
    new-instance p1, Lio/scer/pdf/renderer/resources/DocumentRepository;

    invoke-direct {p1}, Lio/scer/pdf/renderer/resources/DocumentRepository;-><init>()V

    iput-object p1, p0, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->b:Lio/scer/pdf/renderer/resources/DocumentRepository;

    .line 4
    new-instance p1, Lio/scer/pdf/renderer/resources/PageRepository;

    invoke-direct {p1}, Lio/scer/pdf/renderer/resources/PageRepository;-><init>()V

    iput-object p1, p0, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->c:Lio/scer/pdf/renderer/resources/PageRepository;

    return-void
.end method

.method private final a(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    const-string v0, "PDF_RENDER"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->b:Lio/scer/pdf/renderer/resources/DocumentRepository;

    const-string v3, "id"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lio/scer/pdf/renderer/resources/DocumentRepository;->close(Ljava/lang/String;)V

    .line 3
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/scer/pdf/renderer/resources/RepositoryItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Unknown error"

    .line 4
    invoke-interface {p2, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    const-string p1, "Document not exist in documents repository"

    .line 5
    invoke-interface {p2, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    const-string p1, "Need call arguments: id!"

    .line 6
    invoke-interface {p2, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final b(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    const-string v0, "PDF_RENDER"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->c:Lio/scer/pdf/renderer/resources/PageRepository;

    const-string v3, "id"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lio/scer/pdf/renderer/resources/PageRepository;->close(Ljava/lang/String;)V

    .line 3
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/scer/pdf/renderer/resources/RepositoryItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Unknown error"

    .line 4
    invoke-interface {p2, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    const-string p1, "Page not exist in pages repository"

    .line 5
    invoke-interface {p2, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    const-string p1, "Need call arguments: id!"

    .line 6
    invoke-interface {p2, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic c(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->r(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public static synthetic d(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->k(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public static synthetic e(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->t(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public static synthetic f(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->m(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public static synthetic g(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->o(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method private final h(Ljava/lang/String;)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/pdf/PdfRenderer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->a:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->lookupKeyForAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->a:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {v1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lio/scer/pdf/renderer/utils/RandomKt;->getRandomFilename()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".pdf"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->a:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {v1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string v1, "inputStream"

    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lio/scer/pdf/renderer/utils/HooksKt;->toFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OpenAssetDocument. Created file: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PDF_RENDER"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0, v0}, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->p(Ljava/io/File;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final i([B)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lkotlin/Pair<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/pdf/PdfRenderer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->a:Lio/flutter/plugin/common/PluginRegistry$Registrar;

    invoke-interface {v1}, Lio/flutter/plugin/common/PluginRegistry$Registrar;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lio/scer/pdf/renderer/utils/RandomKt;->getRandomFilename()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".pdf"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0, p1}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OpenDataDocument. Created file: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PDF_RENDER"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0, v0}, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->p(Ljava/io/File;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final j(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    new-instance v1, Lio/scer/pdf/renderer/b;

    invoke-direct {v1, p1, p0, p2}, Lio/scer/pdf/renderer/b;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final k(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const-string v0, "PDF_RENDER"

    const-string v1, "$call"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$result"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/String;

    .line 2
    invoke-direct {p1, p0}, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->h(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p0

    .line 3
    iget-object p1, p1, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->b:Lio/scer/pdf/renderer/resources/DocumentRepository;

    invoke-virtual {p1, p0}, Lio/scer/pdf/renderer/resources/DocumentRepository;->register(Lkotlin/Pair;)Lio/scer/pdf/renderer/document/Document;

    move-result-object p0

    invoke-virtual {p0}, Lio/scer/pdf/renderer/document/Document;->getInfoMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/scer/pdf/renderer/utils/CreateRendererException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Unknown error"

    .line 4
    invoke-interface {p2, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    const-string p0, "Can\'t create PDF renderer"

    .line 5
    invoke-interface {p2, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    const-string p0, "Can\'t open file"

    .line 6
    invoke-interface {p2, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    const-string p0, "File not found"

    .line 7
    invoke-interface {p2, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_4
    const-string p0, "Need call arguments: path"

    .line 8
    invoke-interface {p2, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final l(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    new-instance v1, Lio/scer/pdf/renderer/g;

    invoke-direct {v1, p1, p0, p2}, Lio/scer/pdf/renderer/g;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final m(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    const-string v0, "PDF_RENDER"

    const-string v1, "$call"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$result"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, [B

    .line 2
    invoke-direct {p1, p0}, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->i([B)Lkotlin/Pair;

    move-result-object p0

    .line 3
    iget-object p1, p1, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->b:Lio/scer/pdf/renderer/resources/DocumentRepository;

    invoke-virtual {p1, p0}, Lio/scer/pdf/renderer/resources/DocumentRepository;->register(Lkotlin/Pair;)Lio/scer/pdf/renderer/document/Document;

    move-result-object p0

    invoke-virtual {p0}, Lio/scer/pdf/renderer/document/Document;->getInfoMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/scer/pdf/renderer/utils/CreateRendererException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Unknown error"

    .line 4
    invoke-interface {p2, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    const-string p0, "Can\'t create PDF renderer"

    .line 5
    invoke-interface {p2, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    const-string p0, "Can\'t open file"

    .line 6
    invoke-interface {p2, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    const-string p0, "Need call arguments: data!"

    .line 7
    invoke-interface {p2, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final n(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    new-instance v1, Lio/scer/pdf/renderer/h;

    invoke-direct {v1, p1, p0, p2}, Lio/scer/pdf/renderer/h;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final o(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    const-string v0, "PDF_RENDER"

    const-string v1, "$call"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$result"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/String;

    .line 2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v2}, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->p(Ljava/io/File;)Lkotlin/Pair;

    move-result-object p0

    .line 3
    iget-object p1, p1, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->b:Lio/scer/pdf/renderer/resources/DocumentRepository;

    invoke-virtual {p1, p0}, Lio/scer/pdf/renderer/resources/DocumentRepository;->register(Lkotlin/Pair;)Lio/scer/pdf/renderer/document/Document;

    move-result-object p0

    invoke-virtual {p0}, Lio/scer/pdf/renderer/document/Document;->getInfoMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/scer/pdf/renderer/utils/CreateRendererException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Unknown error"

    .line 4
    invoke-interface {p2, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    const-string p0, "Can\'t create PDF renderer"

    .line 5
    invoke-interface {p2, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    const-string p0, "Can\'t open file"

    .line 6
    invoke-interface {p2, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    const-string p0, "File not found"

    .line 7
    invoke-interface {p2, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_4
    const-string p0, "Need call arguments: path"

    .line 8
    invoke-interface {p2, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final p(Ljava/io/File;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lkotlin/Pair<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/pdf/PdfRenderer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenFileDocument. File: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PDF_RENDER"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x10000000

    .line 2
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {v0, p1}, Landroid/graphics/pdf/PdfRenderer;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 4
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 5
    :cond_0
    new-instance p1, Lio/scer/pdf/renderer/utils/CreateRendererException;

    invoke-direct {p1}, Lio/scer/pdf/renderer/utils/CreateRendererException;-><init>()V

    throw p1
.end method

.method private final q(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    new-instance v1, Lio/scer/pdf/renderer/a;

    invoke-direct {v1, p1, p0, p2}, Lio/scer/pdf/renderer/a;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final r(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    const-string v0, "PDF_RENDER"

    const-string v1, "$call"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$result"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "documentId"

    .line 1
    invoke-virtual {p0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "call.argument<String>(\"documentId\")!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    const-string v3, "page"

    .line 2
    invoke-virtual {p0, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "call.argument<Int>(\"page\")!!"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 3
    iget-object v3, p1, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->b:Lio/scer/pdf/renderer/resources/DocumentRepository;

    invoke-virtual {v3, v2}, Lio/scer/pdf/renderer/resources/Repository;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/scer/pdf/renderer/document/Document;

    invoke-virtual {v3, p0}, Lio/scer/pdf/renderer/document/Document;->openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;

    move-result-object p0

    .line 4
    iget-object p1, p1, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->c:Lio/scer/pdf/renderer/resources/PageRepository;

    invoke-virtual {p1, v2, p0}, Lio/scer/pdf/renderer/resources/PageRepository;->register(Ljava/lang/String;Landroid/graphics/pdf/PdfRenderer$Page;)Lio/scer/pdf/renderer/document/Page;

    move-result-object p0

    invoke-virtual {p0}, Lio/scer/pdf/renderer/document/Page;->getInfoMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/scer/pdf/renderer/resources/RepositoryItemNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Unknown error"

    .line 5
    invoke-interface {p2, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    const-string p0, "Document not exist in documents"

    .line 6
    invoke-interface {p2, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    const-string p0, "Need call arguments: documentId & page!"

    .line 7
    invoke-interface {p2, v0, p0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V
    .locals 1
    .param p0    # Lio/flutter/plugin/common/PluginRegistry$Registrar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->Companion:Lio/scer/pdf/renderer/NativePdfRendererPlugin$Companion;

    invoke-virtual {v0, p0}, Lio/scer/pdf/renderer/NativePdfRendererPlugin$Companion;->registerWith(Lio/flutter/plugin/common/PluginRegistry$Registrar;)V

    return-void
.end method

.method private final s(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    new-instance v1, Lio/scer/pdf/renderer/c;

    invoke-direct {v1, p1, p0, p2}, Lio/scer/pdf/renderer/c;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static final t(Lio/flutter/plugin/common/MethodCall;Lio/scer/pdf/renderer/NativePdfRendererPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 12

    const-string v0, "$call"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "pageId"

    .line 1
    invoke-virtual {p0, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "call.argument<String>(\"pageId\")!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const-string v1, "width"

    .line 2
    invoke-virtual {p0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "call.argument<Int>(\"width\")!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-string v1, "height"

    .line 3
    invoke-virtual {p0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "call.argument<Int>(\"height\")!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    const-string v1, "format"

    .line 4
    invoke-virtual {p0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v6

    const-string v1, "backgroundColor"

    .line 5
    invoke-virtual {p0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    move v5, v1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const-string v1, "crop"

    .line 7
    invoke-virtual {p0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v7, "call.argument<Boolean>(\"crop\")!!"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v1, "crop_x"

    .line 8
    invoke-virtual {p0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    const-string v8, "if (crop) call.argument<Int>(\"crop_x\")!! else 0"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-eqz v7, :cond_3

    const-string v1, "crop_y"

    .line 9
    invoke-virtual {p0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    const-string v9, "if (crop) call.argument<Int>(\"crop_y\")!! else 0"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-eqz v7, :cond_4

    const-string v1, "crop_height"

    .line 10
    invoke-virtual {p0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Integer;

    goto :goto_3

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    const-string v10, "if (crop) call.argument<\u2026>(\"crop_height\")!! else 0"

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-eqz v7, :cond_5

    const-string v1, "crop_width"

    .line 11
    invoke-virtual {p0, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Integer;

    goto :goto_4

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_4
    const-string v1, "if (crop) call.argument<\u2026t>(\"crop_width\")!! else 0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 12
    iget-object p0, p1, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->c:Lio/scer/pdf/renderer/resources/PageRepository;

    invoke-virtual {p0, v0}, Lio/scer/pdf/renderer/resources/Repository;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lio/scer/pdf/renderer/document/Page;

    .line 13
    invoke-virtual/range {v2 .. v11}, Lio/scer/pdf/renderer/document/Page;->render(IIIIZIIII)Lio/scer/pdf/renderer/document/Page$Data;

    move-result-object p0

    invoke-virtual {p0}, Lio/scer/pdf/renderer/document/Page$Data;->getToMap()Ljava/util/Map;

    move-result-object p0

    .line 14
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    const-string p1, "PDF_RENDER"

    const-string v0, "Unexpected error"

    .line 15
    invoke-interface {p2, p1, v0, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;

    invoke-direct {v0, p2}, Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 2
    iget-object p2, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "close.document"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->a(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    :sswitch_1
    const-string v1, "open.page"

    .line 4
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, p1, v0}, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->q(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    :sswitch_2
    const-string v1, "open.document.asset"

    .line 6
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0, p1, v0}, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->j(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    :sswitch_3
    const-string v1, "open.document.file"

    .line 8
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-direct {p0, p1, v0}, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->n(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    :sswitch_4
    const-string v1, "open.document.data"

    .line 10
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    invoke-direct {p0, p1, v0}, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->l(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    :sswitch_5
    const-string v1, "render"

    .line 12
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    invoke-direct {p0, p1, v0}, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->s(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    :sswitch_6
    const-string v1, "close.page"

    .line 14
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    .line 15
    :cond_6
    invoke-direct {p0, p1, v0}, Lio/scer/pdf/renderer/NativePdfRendererPlugin;->b(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 16
    :cond_7
    :goto_0
    invoke-virtual {v0}, Lio/scer/pdf/renderer/NativePdfRendererPlugin$a;->notImplemented()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d95473b -> :sswitch_6
        -0x37b4be6a -> :sswitch_5
        0x120867f9 -> :sswitch_4
        0x12096dcb -> :sswitch_3
        0x2ee27c81 -> :sswitch_2
        0x5976d3b3 -> :sswitch_1
        0x69711c51 -> :sswitch_0
    .end sparse-switch
.end method
