.class public abstract Landroidx/camera/view/video/OutputFileOptions;
.super Ljava/lang/Object;
.source "OutputFileOptions.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation build Landroidx/camera/view/video/ExperimentalVideo;
.end annotation

.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/view/video/OutputFileOptions$Builder;
    }
.end annotation


# static fields
.field private static final a:Landroidx/camera/view/video/Metadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/camera/view/video/Metadata;->builder()Landroidx/camera/view/video/Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/view/video/Metadata$Builder;->build()Landroidx/camera/view/video/Metadata;

    move-result-object v0

    sput-object v0, Landroidx/camera/view/video/OutputFileOptions;->a:Landroidx/camera/view/video/Metadata;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroidx/camera/view/video/OutputFileOptions$Builder;
    .locals 2
    .param p0    # Landroid/content/ContentResolver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    new-instance v0, Landroidx/camera/view/video/b$b;

    invoke-direct {v0}, Landroidx/camera/view/video/b$b;-><init>()V

    sget-object v1, Landroidx/camera/view/video/OutputFileOptions;->a:Landroidx/camera/view/video/Metadata;

    .line 6
    invoke-virtual {v0, v1}, Landroidx/camera/view/video/b$b;->setMetadata(Landroidx/camera/view/video/Metadata;)Landroidx/camera/view/video/OutputFileOptions$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroidx/camera/view/video/OutputFileOptions$Builder;->a(Landroid/content/ContentResolver;)Landroidx/camera/view/video/OutputFileOptions$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/camera/view/video/OutputFileOptions$Builder;->e(Landroid/net/Uri;)Landroidx/camera/view/video/OutputFileOptions$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/camera/view/video/OutputFileOptions$Builder;->b(Landroid/content/ContentValues;)Landroidx/camera/view/video/OutputFileOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static builder(Landroid/os/ParcelFileDescriptor;)Landroidx/camera/view/video/OutputFileOptions$Builder;
    .locals 2
    .param p0    # Landroid/os/ParcelFileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Using a ParcelFileDescriptor to record a video is only supported for Android 8.0 or above."

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3
    new-instance v0, Landroidx/camera/view/video/b$b;

    invoke-direct {v0}, Landroidx/camera/view/video/b$b;-><init>()V

    sget-object v1, Landroidx/camera/view/video/OutputFileOptions;->a:Landroidx/camera/view/video/Metadata;

    invoke-virtual {v0, v1}, Landroidx/camera/view/video/b$b;->setMetadata(Landroidx/camera/view/video/Metadata;)Landroidx/camera/view/video/OutputFileOptions$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Landroidx/camera/view/video/OutputFileOptions$Builder;->d(Landroid/os/ParcelFileDescriptor;)Landroidx/camera/view/video/OutputFileOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static builder(Ljava/io/File;)Landroidx/camera/view/video/OutputFileOptions$Builder;
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/camera/view/video/b$b;

    invoke-direct {v0}, Landroidx/camera/view/video/b$b;-><init>()V

    sget-object v1, Landroidx/camera/view/video/OutputFileOptions;->a:Landroidx/camera/view/video/Metadata;

    invoke-virtual {v0, v1}, Landroidx/camera/view/video/b$b;->setMetadata(Landroidx/camera/view/video/Metadata;)Landroidx/camera/view/video/OutputFileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/camera/view/video/OutputFileOptions$Builder;->c(Ljava/io/File;)Landroidx/camera/view/video/OutputFileOptions$Builder;

    move-result-object p0

    return-object p0
.end method

.method private f()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->c()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->d()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->e()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->a()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->b()Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method abstract a()Landroid/content/ContentResolver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method abstract b()Landroid/content/ContentValues;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method abstract c()Ljava/io/File;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method abstract d()Landroid/os/ParcelFileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method abstract e()Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getMetadata()Landroidx/camera/view/video/Metadata;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public toVideoCaptureOutputFileOptions()Landroidx/camera/core/VideoCapture$OutputFileOptions;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/camera/view/video/OutputFileOptions;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;

    .line 3
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->c()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-direct {v0, v1}, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Landroidx/camera/view/video/OutputFileOptions;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;

    .line 6
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->d()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Landroidx/camera/view/video/OutputFileOptions;->h()Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 8
    new-instance v0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;

    .line 9
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->a()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentResolver;

    .line 10
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->e()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 11
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->b()Landroid/content/ContentValues;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-direct {v0, v1, v2, v3}, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 12
    :goto_0
    new-instance v1, Landroidx/camera/core/VideoCapture$Metadata;

    invoke-direct {v1}, Landroidx/camera/core/VideoCapture$Metadata;-><init>()V

    .line 13
    invoke-virtual {p0}, Landroidx/camera/view/video/OutputFileOptions;->getMetadata()Landroidx/camera/view/video/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/view/video/Metadata;->getLocation()Landroid/location/Location;

    move-result-object v2

    iput-object v2, v1, Landroidx/camera/core/VideoCapture$Metadata;->location:Landroid/location/Location;

    .line 14
    invoke-virtual {v0, v1}, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->setMetadata(Landroidx/camera/core/VideoCapture$Metadata;)Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;

    .line 15
    invoke-virtual {v0}, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->build()Landroidx/camera/core/VideoCapture$OutputFileOptions;

    move-result-object v0

    return-object v0
.end method
