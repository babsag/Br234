.class public final synthetic Landroidx/camera/core/p0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/camera/core/ImageSaver;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/ImageSaver;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/p0;->a:Landroidx/camera/core/ImageSaver;

    iput-object p2, p0, Landroidx/camera/core/p0;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/core/p0;->a:Landroidx/camera/core/ImageSaver;

    iget-object v1, p0, Landroidx/camera/core/p0;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageSaver;->m(Ljava/io/File;)V

    return-void
.end method
