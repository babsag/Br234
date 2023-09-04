.class Lcaf/io/h$c;
.super Ljava/lang/Object;
.source "CameraHelper.java"

# interfaces
.implements Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcaf/io/h;->a(Ljava/lang/String;ILcaf/io/h$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcaf/io/h$f;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcaf/io/h;


# direct methods
.method constructor <init>(Lcaf/io/h;Lcaf/io/h$f;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcaf/io/h$c;->c:Lcaf/io/h;

    iput-object p2, p0, Lcaf/io/h$c;->a:Lcaf/io/h$f;

    iput-object p3, p0, Lcaf/io/h$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcaf/io/h$c;->a:Lcaf/io/h$f;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcaf/io/h$f;->a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onVideoSaved(Landroidx/camera/core/VideoCapture$OutputFileResults;)V
    .locals 3
    .param p1    # Landroidx/camera/core/VideoCapture$OutputFileResults;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcaf/io/h$c;->a:Lcaf/io/h$f;

    new-instance v0, Lcaf/io/k;

    iget-object v1, p0, Lcaf/io/h$c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcaf/io/h$c;->c:Lcaf/io/h;

    invoke-static {v2}, Lcaf/io/h;->a(Lcaf/io/h;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcaf/io/k;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcaf/io/h$f;->a(Lcaf/io/k;)V

    return-void
.end method
