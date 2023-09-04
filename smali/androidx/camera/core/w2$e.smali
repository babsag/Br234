.class final Landroidx/camera/core/w2$e;
.super Ljava/lang/Object;
.source "ProcessingImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/w2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field protected final a:Landroidx/camera/core/impl/ImageReaderProxy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final b:Landroidx/camera/core/impl/CaptureBundle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final c:Landroidx/camera/core/impl/CaptureProcessor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected d:I

.field protected e:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(IIIILandroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/impl/CaptureProcessor;)V
    .locals 1
    .param p5    # Landroidx/camera/core/impl/CaptureBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Landroidx/camera/core/impl/CaptureProcessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    new-instance v0, Landroidx/camera/core/MetadataImageReader;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/camera/core/MetadataImageReader;-><init>(IIII)V

    invoke-direct {p0, v0, p5, p6}, Landroidx/camera/core/w2$e;-><init>(Landroidx/camera/core/impl/ImageReaderProxy;Landroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/impl/CaptureProcessor;)V

    return-void
.end method

.method constructor <init>(Landroidx/camera/core/impl/ImageReaderProxy;Landroidx/camera/core/impl/CaptureBundle;Landroidx/camera/core/impl/CaptureProcessor;)V
    .locals 1
    .param p1    # Landroidx/camera/core/impl/ImageReaderProxy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/camera/core/impl/CaptureBundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/camera/core/impl/CaptureProcessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/w2$e;->e:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p1, p0, Landroidx/camera/core/w2$e;->a:Landroidx/camera/core/impl/ImageReaderProxy;

    .line 4
    iput-object p2, p0, Landroidx/camera/core/w2$e;->b:Landroidx/camera/core/impl/CaptureBundle;

    .line 5
    iput-object p3, p0, Landroidx/camera/core/w2$e;->c:Landroidx/camera/core/impl/CaptureProcessor;

    .line 6
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->getImageFormat()I

    move-result p1

    iput p1, p0, Landroidx/camera/core/w2$e;->d:I

    return-void
.end method


# virtual methods
.method a()Landroidx/camera/core/w2;
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/core/w2;

    invoke-direct {v0, p0}, Landroidx/camera/core/w2;-><init>(Landroidx/camera/core/w2$e;)V

    return-object v0
.end method

.method b(I)Landroidx/camera/core/w2$e;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/camera/core/w2$e;->d:I

    return-object p0
.end method

.method c(Ljava/util/concurrent/Executor;)Landroidx/camera/core/w2$e;
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/camera/core/w2$e;->e:Ljava/util/concurrent/Executor;

    return-object p0
.end method
