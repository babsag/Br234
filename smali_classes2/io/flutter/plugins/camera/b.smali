.class public final synthetic Lio/flutter/plugins/camera/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# instance fields
.field public final synthetic a:Lio/flutter/plugins/camera/Camera;

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/camera/Camera;Ljava/io/File;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/camera/b;->a:Lio/flutter/plugins/camera/Camera;

    iput-object p2, p0, Lio/flutter/plugins/camera/b;->b:Ljava/io/File;

    iput-object p3, p0, Lio/flutter/plugins/camera/b;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    iget-object v0, p0, Lio/flutter/plugins/camera/b;->a:Lio/flutter/plugins/camera/Camera;

    iget-object v1, p0, Lio/flutter/plugins/camera/b;->b:Ljava/io/File;

    iget-object v2, p0, Lio/flutter/plugins/camera/b;->c:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-virtual {v0, v1, v2, p1}, Lio/flutter/plugins/camera/Camera;->v(Ljava/io/File;Lio/flutter/plugin/common/MethodChannel$Result;Landroid/media/ImageReader;)V

    return-void
.end method
