.class public final Landroidx/camera/core/VideoCapture$OutputFileOptions;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputFileOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;
    }
.end annotation


# static fields
.field private static final a:Landroidx/camera/core/VideoCapture$Metadata;


# instance fields
.field private final b:Ljava/io/File;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/io/FileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Landroid/content/ContentResolver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:Landroid/content/ContentValues;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Landroidx/camera/core/VideoCapture$Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/camera/core/VideoCapture$Metadata;

    invoke-direct {v0}, Landroidx/camera/core/VideoCapture$Metadata;-><init>()V

    sput-object v0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->a:Landroidx/camera/core/VideoCapture$Metadata;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/FileDescriptor;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Landroidx/camera/core/VideoCapture$Metadata;)V
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/ContentResolver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/camera/core/VideoCapture$Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->b:Ljava/io/File;

    .line 3
    iput-object p2, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->c:Ljava/io/FileDescriptor;

    .line 4
    iput-object p3, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->d:Landroid/content/ContentResolver;

    .line 5
    iput-object p4, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->e:Landroid/net/Uri;

    .line 6
    iput-object p5, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->f:Landroid/content/ContentValues;

    if-nez p6, :cond_0

    .line 7
    sget-object p6, Landroidx/camera/core/VideoCapture$OutputFileOptions;->a:Landroidx/camera/core/VideoCapture$Metadata;

    :cond_0
    iput-object p6, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->g:Landroidx/camera/core/VideoCapture$Metadata;

    return-void
.end method


# virtual methods
.method a()Landroid/content/ContentResolver;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->d:Landroid/content/ContentResolver;

    return-object v0
.end method

.method b()Landroid/content/ContentValues;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->f:Landroid/content/ContentValues;

    return-object v0
.end method

.method c()Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->b:Ljava/io/File;

    return-object v0
.end method

.method d()Ljava/io/FileDescriptor;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->c:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method e()Landroidx/camera/core/VideoCapture$Metadata;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->g:Landroidx/camera/core/VideoCapture$Metadata;

    return-object v0
.end method

.method f()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/core/VideoCapture$OutputFileOptions;->e:Landroid/net/Uri;

    return-object v0
.end method

.method g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture$OutputFileOptions;->c()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method h()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture$OutputFileOptions;->d()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method i()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture$OutputFileOptions;->f()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture$OutputFileOptions;->a()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture$OutputFileOptions;->b()Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
