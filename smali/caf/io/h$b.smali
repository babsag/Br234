.class Lcaf/io/h$b;
.super Landroid/os/CountDownTimer;
.source "CameraHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcaf/io/h;->a(Ljava/lang/String;ILcaf/io/h$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcaf/io/h;


# direct methods
.method constructor <init>(Lcaf/io/h;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcaf/io/h$b;->a:Lcaf/io/h;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/h$b;->a:Lcaf/io/h;

    invoke-static {v0}, Lcaf/io/h;->e(Lcaf/io/h;)I

    .line 2
    iget-object v0, p0, Lcaf/io/h$b;->a:Lcaf/io/h;

    invoke-static {v0}, Lcaf/io/h;->f(Lcaf/io/h;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcaf/io/h$b;->a:Lcaf/io/h;

    invoke-static {v0}, Lcaf/io/h;->g(Lcaf/io/h;)Landroidx/camera/core/VideoCapture;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/VideoCapture;->stopRecording()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcaf/io/h$b;->a:Lcaf/io/h;

    invoke-static {p1}, Lcaf/io/h;->e(Lcaf/io/h;)I

    return-void
.end method
