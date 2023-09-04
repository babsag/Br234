.class public Lcaf/io/L;
.super Ljava/lang/Object;
.source "PassiveFaceLivenessController.java"

# interfaces
.implements Lcaf/io/i;
.implements Lcaf/io/w$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcaf/io/L$a;,
        Lcaf/io/L$b;
    }
.end annotation


# static fields
.field public static u:Lcaf/io/Z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcaf/io/Z<",
            "Lcaf/io/E$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

.field private final b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

.field private final c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

.field private final d:Lcaf/io/w;

.field private final e:Lcaf/io/f;

.field private final f:Lcaf/io/j;

.field private final g:Lcaf/io/T;

.field private h:Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

.field private i:Lcaf/io/L$b;

.field private j:Lcaf/io/l;

.field private k:Landroid/os/Handler;

.field private l:Lcom/google/mlkit/vision/common/InputImage;

.field private final m:Lcaf/io/Q;

.field private n:Lcaf/io/k;

.field private o:Z

.field private p:J

.field private q:Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Lcaf/io/L$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcaf/io/L$a;->a(Lcaf/io/L$a;)Lcaf/io/j;

    move-result-object v0

    iput-object v0, p0, Lcaf/io/L;->f:Lcaf/io/j;

    .line 3
    check-cast v0, Lcaf/io/h;

    invoke-virtual {v0, p0}, Lcaf/io/h;->a(Lcaf/io/i;)V

    .line 4
    invoke-static {p1}, Lcaf/io/L$a;->b(Lcaf/io/L$a;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    move-result-object v0

    iput-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    .line 5
    invoke-static {p1}, Lcaf/io/L$a;->c(Lcaf/io/L$a;)Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    move-result-object v1

    iput-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    .line 6
    invoke-static {p1}, Lcaf/io/L$a;->d(Lcaf/io/L$a;)Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    move-result-object v2

    iput-object v2, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    .line 7
    invoke-static {p1}, Lcaf/io/L$a;->e(Lcaf/io/L$a;)Lcaf/io/w;

    move-result-object v2

    iput-object v2, p0, Lcaf/io/L;->d:Lcaf/io/w;

    .line 8
    invoke-static {p1}, Lcaf/io/L$a;->f(Lcaf/io/L$a;)Lcaf/io/f;

    move-result-object v2

    iput-object v2, p0, Lcaf/io/L;->e:Lcaf/io/f;

    .line 9
    invoke-static {p1}, Lcaf/io/L$a;->g(Lcaf/io/L$a;)Lcaf/io/T;

    move-result-object p1

    iput-object p1, p0, Lcaf/io/L;->g:Lcaf/io/T;

    .line 10
    new-instance p1, Lcaf/io/Q;

    invoke-direct {p1, v0, v1}, Lcaf/io/Q;-><init>(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;)V

    iput-object p1, p0, Lcaf/io/L;->m:Lcaf/io/Q;

    .line 11
    invoke-virtual {p1}, Lcaf/io/Q;->f()V

    .line 12
    invoke-direct {p0}, Lcaf/io/L;->I()V

    .line 13
    invoke-direct {p0}, Lcaf/io/L;->H()V

    .line 14
    invoke-direct {p0}, Lcaf/io/L;->J()V

    .line 15
    invoke-virtual {p0}, Lcaf/io/L;->e()Lcaf/io/Z;

    move-result-object p1

    sput-object p1, Lcaf/io/L;->u:Lcaf/io/Z;

    .line 16
    invoke-direct {p0}, Lcaf/io/L;->f()V

    return-void
.end method

.method private A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcaf/io/L;->i:Lcaf/io/L$b;

    sget-object v1, Lcaf/io/L$b;->b:Lcaf/io/L$b;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcaf/io/L;->s:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcaf/io/L$b;->e:Lcaf/io/L$b;

    iput-object v0, p0, Lcaf/io/L;->i:Lcaf/io/L$b;

    .line 3
    sget-object v0, Lcaf/io/l;->b:Lcaf/io/l;

    iput-object v0, p0, Lcaf/io/L;->j:Lcaf/io/l;

    .line 4
    iget-object v1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v1, v0}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setCaptureModeStatus(Lcaf/io/l;)V

    .line 5
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setButton(Z)V

    .line 7
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setManualCaptureButtonVisibility(Z)V

    .line 8
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setReadyToCaptureStatus(Z)V

    .line 9
    sget-object v0, Lcaf/io/C;->c:Lcaf/io/C;

    invoke-virtual {p0, v0}, Lcaf/io/L;->a(Lcaf/io/C;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private B(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->finishStep()V

    .line 3
    iget-object v0, p0, Lcaf/io/L;->k:Landroid/os/Handler;

    new-instance v1, Lcaf/io/q0;

    invoke-direct {v1, p0, p1}, Lcaf/io/q0;-><init>(Lcaf/io/L;Ljava/lang/String;)V

    iget-object p1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->d()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private C(Ljava/lang/Void;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcaf/io/L;->o:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcaf/io/L;->o:Z

    .line 3
    iget-object p1, p0, Lcaf/io/L;->f:Lcaf/io/j;

    check-cast p1, Lcaf/io/h;

    invoke-virtual {p1}, Lcaf/io/h;->g()V

    :cond_0
    return-void
.end method

.method private D(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, p1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcaf/io/C;->b:Lcaf/io/C;

    invoke-virtual {p0, p1}, Lcaf/io/L;->a(Lcaf/io/C;)V

    .line 3
    iget-object p1, p0, Lcaf/io/L;->k:Landroid/os/Handler;

    new-instance v0, Lcaf/io/t0;

    invoke-direct {v0, p0}, Lcaf/io/t0;-><init>(Lcaf/io/L;)V

    const/16 v1, 0x9c4

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private E(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcaf/io/L$b;->b:Lcaf/io/L$b;

    iput-object v0, p0, Lcaf/io/L;->i:Lcaf/io/L$b;

    .line 2
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    iget-object v1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v1

    iget-object v2, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v1, v2}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getVerifyingLivenessMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->startPost()V

    .line 4
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setLoadingStatus(Z)V

    .line 5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcaf/io/p0;

    invoke-direct {v1, p0, p1}, Lcaf/io/p0;-><init>(Lcaf/io/L;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private F()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    sget v2, Lcom/combateafraude/passivefaceliveness/R$string;->passive_face_liveness_file_caf:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private G(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcaf/io/L$b;->d:Lcaf/io/L$b;

    .line 3
    iput-object v0, p0, Lcaf/io/L;->i:Lcaf/io/L$b;

    .line 4
    iget-object v0, p0, Lcaf/io/L;->f:Lcaf/io/j;

    new-instance v1, Lcaf/io/k1;

    invoke-direct {v1, p0}, Lcaf/io/k1;-><init>(Lcaf/io/L;)V

    check-cast v0, Lcaf/io/h;

    invoke-virtual {v0, p1, v1}, Lcaf/io/h;->a(Ljava/lang/String;Lcaf/io/h$e;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    sget v2, Lcom/combateafraude/passivefaceliveness/R$string;->hold_it_caf:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcaf/io/C;->c:Lcaf/io/C;

    invoke-virtual {p0, v0}, Lcaf/io/L;->a(Lcaf/io/C;)V

    .line 7
    iget-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->c()Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    move-result-object v0

    check-cast v0, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcaf/io/L;->f:Lcaf/io/j;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;->getTime()I

    move-result v0

    new-instance v2, Lcaf/io/l1;

    invoke-direct {v2, p0}, Lcaf/io/l1;-><init>(Lcaf/io/L;)V

    check-cast v1, Lcaf/io/h;

    invoke-virtual {v1, p1, v0, v2}, Lcaf/io/h;->a(Ljava/lang/String;ILcaf/io/h$f;)V

    :goto_0
    return-void
.end method

.method private H()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    iget-object v0, v0, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->closeButton:Lcaf/io/d0;

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    new-instance v2, Lcaf/io/n0;

    invoke-direct {v2, p0}, Lcaf/io/n0;-><init>(Lcaf/io/L;)V

    invoke-virtual {v0, v1, v2}, Lcaf/io/d0;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 2
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    iget-object v0, v0, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->takePhotoButton:Lcaf/io/d0;

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    new-instance v2, Lcaf/io/r0;

    invoke-direct {v2, p0}, Lcaf/io/r0;-><init>(Lcaf/io/L;)V

    invoke-virtual {v0, v1, v2}, Lcaf/io/d0;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    iget-object v0, v0, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->switchCamera:Lcaf/io/d0;

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    new-instance v2, Lcaf/io/m0;

    invoke-direct {v2, p0}, Lcaf/io/m0;-><init>(Lcaf/io/L;)V

    invoke-virtual {v0, v1, v2}, Lcaf/io/d0;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private I()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcaf/io/L;->l:Lcom/google/mlkit/vision/common/InputImage;

    .line 2
    iput-object v0, p0, Lcaf/io/L;->n:Lcaf/io/k;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcaf/io/L;->o:Z

    .line 4
    sget-object v1, Lcaf/io/l;->c:Lcaf/io/l;

    iput-object v1, p0, Lcaf/io/L;->j:Lcaf/io/l;

    .line 5
    sget-object v1, Lcaf/io/L$b;->a:Lcaf/io/L$b;

    iput-object v1, p0, Lcaf/io/L;->i:Lcaf/io/L$b;

    .line 6
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcaf/io/L;->k:Landroid/os/Handler;

    .line 7
    iput-boolean v0, p0, Lcaf/io/L;->s:Z

    .line 8
    iput-boolean v0, p0, Lcaf/io/L;->t:Z

    return-void
.end method

.method private J()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setSwitchCameraButtonVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    iget-object v1, p0, Lcaf/io/L;->f:Lcaf/io/j;

    check-cast v1, Lcaf/io/h;

    invoke-virtual {v1}, Lcaf/io/h;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setEnableSwitchCamera(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setSwitchCameraButtonVisibility(Z)V

    .line 5
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setEnableSwitchCamera(Z)V

    :goto_0
    return-void
.end method

.method private K()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->c()Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    move-result-object v0

    check-cast v0, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;->getBeforePictureMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;->getAfterPictureMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 3
    iget-object v0, p0, Lcaf/io/L;->d:Lcaf/io/w;

    invoke-virtual {v0}, Lcaf/io/w;->c()J

    move-result-wide v4

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v4, v2

    cmp-long v0, v6, v4

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private synthetic L()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcaf/io/L;->f:Lcaf/io/j;

    check-cast v0, Lcaf/io/h;

    invoke-virtual {v0}, Lcaf/io/h;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcaf/io/L;->a(ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic M(Lcaf/io/L;)V
    .locals 0

    invoke-direct {p0}, Lcaf/io/L;->Y()V

    return-void
.end method

.method public static synthetic N(Lcaf/io/L;)V
    .locals 0

    invoke-direct {p0}, Lcaf/io/L;->X()V

    return-void
.end method

.method public static synthetic O(Lcaf/io/L;Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcaf/io/L;->w(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)V

    return-void
.end method

.method public static synthetic P(Lcaf/io/L;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcaf/io/L;->C(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic Q(Lcaf/io/L;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcaf/io/L;->q(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic R(Lcaf/io/L;)V
    .locals 0

    invoke-direct {p0}, Lcaf/io/L;->L()V

    return-void
.end method

.method public static synthetic S(Lcaf/io/L;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcaf/io/L;->x(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic T(Lcaf/io/L;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcaf/io/L;->o(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic U(Lcaf/io/L;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcaf/io/L;->y(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic V(Lcaf/io/L;)V
    .locals 0

    invoke-direct {p0}, Lcaf/io/L;->A()V

    return-void
.end method

.method public static synthetic W(Lcaf/io/L;)V
    .locals 0

    invoke-direct {p0}, Lcaf/io/L;->Z()V

    return-void
.end method

.method private synthetic X()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcaf/io/L;->f:Lcaf/io/j;

    check-cast v0, Lcaf/io/h;

    invoke-virtual {v0}, Lcaf/io/h;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcaf/io/L;->a(ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method private Y()V
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->c()Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;->getContentType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcaf/io/L;->u:Lcaf/io/Z;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3
    new-instance v5, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/UploadImageParam;

    invoke-direct {v5, v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/UploadImageParam;-><init>(Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcaf/io/e;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v2}, Lcaf/io/Z;->a()Lcaf/io/O;

    move-result-object v2

    check-cast v2, Lcaf/io/E$a;

    invoke-interface {v2, v1, v5}, Lcaf/io/E$a;->a(Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/UploadImageParam;)Lretrofit2/Call;

    move-result-object v1

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 7
    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;

    .line 8
    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 9
    sget-object v1, Lcaf/io/t;->p:Lcaf/io/t;

    new-instance v3, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/GotImageUploadLinksEvent;

    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;->getPutUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;->getBucket()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v7, v8, v5}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/GotImageUploadLinksEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    sget-object v4, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v4, v1, v3}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 11
    invoke-static {p0, v2}, Lcaf/io/L;->c(Lcaf/io/L;Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;)Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;

    .line 12
    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;->getPutUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcaf/io/L;->d(Lcaf/io/L;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 14
    invoke-static {p0}, Lcaf/io/L;->b(Lcaf/io/L;)Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    move-result-object v2

    new-instance v3, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    new-instance v4, Lcom/combateafraude/passivefaceliveness/output/failure/ServerReason;

    new-instance v5, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ServerUnsuccessful;

    invoke-direct {v5}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ServerUnsuccessful;-><init>()V

    invoke-virtual {v1}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-direct {v4, v5, v1}, Lcom/combateafraude/passivefaceliveness/output/failure/ServerReason;-><init>(Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ServerUnsuccessful;I)V

    invoke-direct {v3, v4}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V

    invoke-virtual {v2, v3, v0}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    new-instance v2, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    new-instance v3, Lcom/combateafraude/passivefaceliveness/output/failure/NetworkReason;

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/combateafraude/passivefaceliveness/output/failure/NetworkReason;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v2, v3}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V

    .line 17
    sget-object v1, Lcaf/io/t;->u:Lcaf/io/t;

    new-instance v3, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {v3, v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)V

    .line 18
    sget-object v4, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v4, v1, v3}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 19
    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v1, v2, v0}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private Z()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcaf/io/L;->a0()V

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcaf/io/L;->p:J

    .line 3
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    iget-object v1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v1

    iget-object v2, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v1, v2}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getStepName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->startStep(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcaf/io/L;->a(ZLandroid/graphics/Bitmap;)V

    .line 5
    iget-object v2, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setCameraVisibility(Z)V

    .line 6
    iput-object v1, p0, Lcaf/io/L;->n:Lcaf/io/k;

    .line 7
    iput-boolean v0, p0, Lcaf/io/L;->s:Z

    .line 8
    iget-object v0, p0, Lcaf/io/L;->f:Lcaf/io/j;

    check-cast v0, Lcaf/io/h;

    invoke-virtual {v0}, Lcaf/io/h;->a()V

    .line 9
    iget-object v0, p0, Lcaf/io/L;->j:Lcaf/io/l;

    sget-object v1, Lcaf/io/l;->b:Lcaf/io/l;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->N()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lcaf/io/L;->s()V

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcaf/io/L;->A()V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcaf/io/L;Lcaf/io/L$b;)Lcaf/io/L$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcaf/io/L;->i:Lcaf/io/L$b;

    return-object p1
.end method

.method private a0()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcaf/io/j0;

    invoke-direct {v1, p0}, Lcaf/io/j0;-><init>(Lcaf/io/L;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lcaf/io/L;)Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;
    .locals 0

    .line 4
    iget-object p0, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    return-object p0
.end method

.method static synthetic c(Lcaf/io/L;Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;)Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;
    .locals 0

    .line 2
    iput-object p1, p0, Lcaf/io/L;->q:Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;

    return-object p1
.end method

.method static synthetic d(Lcaf/io/L;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 7
    iput-object p1, p0, Lcaf/io/L;->r:Ljava/lang/String;

    return-object p1
.end method

.method private f()V
    .locals 10

    .line 1
    new-instance v0, Lcaf/io/p;

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-direct {v0, v1}, Lcaf/io/p;-><init>(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;)V

    .line 2
    new-instance v5, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamInformation;

    invoke-direct {v5, v0}, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamInformation;-><init>(Lcaf/io/p;)V

    .line 3
    new-instance v6, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;

    invoke-direct {v6, v0}, Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;-><init>(Lcaf/io/p;)V

    .line 4
    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-static {v1}, Lcaf/io/M;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v0}, Lcaf/io/p;->h()Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->j()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 8
    new-instance v1, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/AttestationParam;

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/AttestationParam;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamInformation;Lcom/combateafraude/passivefaceliveness/controller/attestation/AttestationParamSettings;Ljava/lang/String;)V

    .line 9
    sget-object v2, Lcaf/io/L;->u:Lcaf/io/Z;

    invoke-virtual {v2}, Lcaf/io/Z;->a()Lcaf/io/O;

    move-result-object v2

    check-cast v2, Lcaf/io/E$a;

    invoke-interface {v2, v0, v1}, Lcaf/io/E$a;->a(Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/AttestationParam;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcaf/io/j1;

    invoke-direct {v1, p0, v8, v9}, Lcaf/io/j1;-><init>(Lcaf/io/L;J)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private g(I)V
    .locals 5

    .line 4
    iget-object v0, p0, Lcaf/io/L;->k:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcaf/io/L;->f:Lcaf/io/j;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcaf/io/i0;

    invoke-direct {v2, v1}, Lcaf/io/i0;-><init>(Lcaf/io/j;)V

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic h(Lcaf/io/L;Lcaf/io/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcaf/io/L;->l(Lcaf/io/k;)V

    return-void
.end method

.method static i(Lcaf/io/L;Lcaf/io/w;Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcaf/io/w;->b()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const-wide p1, -0x266b3da67cb6L

    .line 3
    invoke-static {p1, p2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1, v1}, Lcaf/io/L;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcaf/io/w;->b()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    const-wide p1, -0x267a3da67cb6L

    .line 6
    invoke-static {p1, p2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1, v1}, Lcaf/io/L;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, p2}, Lcaf/io/L;->z(Lcom/google/mlkit/vision/common/InputImage;)I

    move-result v0

    .line 9
    invoke-direct {p0, p2}, Lcaf/io/L;->r(Lcom/google/mlkit/vision/common/InputImage;)I

    move-result p2

    .line 10
    invoke-virtual {p1}, Lcaf/io/w;->a()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/vision/face/Face;

    .line 11
    invoke-virtual {p1}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v2

    .line 12
    invoke-static {v0, p2}, Lcaf/io/w;->a(II)Landroid/graphics/Rect;

    move-result-object p2

    .line 13
    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_2

    const-wide p1, -0x26893da67cb6L

    .line 14
    invoke-static {p1, p2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {p0, p1, v1}, Lcaf/io/L;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-wide p1, -0x26993da67cb6L

    .line 17
    invoke-static {p1, p2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-direct {p0, p1, v1}, Lcaf/io/L;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_3
    invoke-static {p1, v0}, Lcaf/io/w;->a(Lcom/google/mlkit/vision/face/Face;I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-wide p1, -0x26a83da67cb6L

    .line 20
    invoke-static {p1, p2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {p0, p1, v1}, Lcaf/io/L;->p(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :goto_0
    monitor-exit p0

    goto :goto_2

    .line 23
    :cond_4
    :try_start_1
    iget-object p1, p0, Lcaf/io/L;->n:Lcaf/io/k;

    if-eqz p1, :cond_5

    .line 24
    invoke-virtual {p1}, Lcaf/io/k;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcaf/io/L;->E(Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_5
    iget-object p1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object p1

    iget-object p2, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {p1, p2}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getCaptureProcessingErrorMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcaf/io/L;->D(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static j(Lcaf/io/L;Lcom/combateafraude/passivefaceliveness/controller/server/model/response/AttestationVerification;J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    long-to-float p2, v0

    const/high16 p3, 0x44800000    # 1024.0f

    div-float/2addr p3, p2

    .line 3
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 4
    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/AttestationVerification;->getAttestation()Ljava/lang/String;

    move-result-object p3

    sput-object p3, Lcaf/io/e;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/AttestationVerification;->getCustomerHash()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcaf/io/a0;->b:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcaf/io/L;->a0()V

    .line 7
    iget-object p1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setLoadingStatus(Z)V

    .line 8
    iput-boolean p3, p0, Lcaf/io/L;->s:Z

    .line 9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcaf/io/L;->p:J

    .line 10
    iget-object p1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    iget-object p3, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p3}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object p3

    iget-object v2, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {p3, v2}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getStepName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->startStep(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->N()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->L()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcaf/io/L;->s()V

    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcaf/io/L;->A()V

    .line 14
    :goto_1
    sget-object p1, Lcaf/io/t;->f:Lcaf/io/t;

    new-instance p3, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureRequestedEvent;

    invoke-direct {p3}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureRequestedEvent;-><init>()V

    .line 15
    sget-object v2, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v2, p1, p3}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 16
    sget-object p1, Lcaf/io/t;->q:Lcaf/io/t;

    new-instance p3, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/TokenVerifiedEvent;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/TokenVerifiedEvent;-><init>(Ljava/lang/Long;)V

    .line 17
    invoke-virtual {v2, p1, p3}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 18
    sget-object p1, Lcaf/io/t;->e:Lcaf/io/t;

    iget-object p0, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-static {p0, p2}, Lcaf/io/F;->a(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;I)Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;

    move-result-object p0

    .line 19
    invoke-virtual {v2, p1, p0}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    return-void
.end method

.method private k(Lcaf/io/g0;)V
    .locals 4

    .line 1
    sget-object v0, Lcaf/io/C;->a:Lcaf/io/C;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 3
    :pswitch_1
    iget-object v1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v1

    iget-object v2, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v1, v2}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getMultipleFaceDetectedMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v0

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getNotCenterZMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v0, Lcaf/io/C;->b:Lcaf/io/C;

    goto :goto_0

    .line 6
    :pswitch_3
    iget-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v0

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getNotCenterYMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 7
    sget-object v0, Lcaf/io/C;->b:Lcaf/io/C;

    goto :goto_0

    .line 8
    :pswitch_4
    iget-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v0

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getNotCenterXMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 9
    sget-object v0, Lcaf/io/C;->b:Lcaf/io/C;

    goto :goto_0

    .line 10
    :pswitch_5
    iget-object v1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v1

    iget-object v2, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v1, v2}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getFaceTooCloseMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11
    :pswitch_6
    iget-object v1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v1

    iget-object v2, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v1, v2}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getFaceTooFarMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 12
    :pswitch_7
    iget-object v1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v1

    iget-object v2, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v1, v2}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getFaceNotFoundMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 13
    :pswitch_8
    iget-object v1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v1

    iget-object v2, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v1, v2}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getFaceNotFittedMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 14
    :pswitch_9
    iget-object v1, p0, Lcaf/io/L;->g:Lcaf/io/T;

    invoke-virtual {v1}, Lcaf/io/T;->b()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 15
    iget-object v2, p0, Lcaf/io/L;->i:Lcaf/io/L$b;

    sget-object v3, Lcaf/io/L$b;->c:Lcaf/io/L$b;

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    iget-object v2, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 17
    iget-object v2, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v2, p1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcaf/io/g0;)V

    .line 18
    iget-object p1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v0}, Lcaf/io/L;->a(Lcaf/io/C;)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private l(Lcaf/io/k;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcaf/io/L;->n:Lcaf/io/k;

    .line 2
    iget-object v0, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    new-instance v1, Lcaf/io/o0;

    invoke-direct {v1, p0}, Lcaf/io/o0;-><init>(Lcaf/io/L;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->N()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcaf/io/k;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcaf/io/L;->E(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcaf/io/w;

    invoke-direct {p1}, Lcaf/io/w;-><init>()V

    .line 5
    sget-object v0, Lcaf/io/w$b;->c:Lcaf/io/w$b;

    iget-object v1, p0, Lcaf/io/L;->l:Lcom/google/mlkit/vision/common/InputImage;

    new-instance v2, Lcaf/io/m1;

    invoke-direct {v2, p0, p1}, Lcaf/io/m1;-><init>(Lcaf/io/L;Lcaf/io/w;)V

    invoke-virtual {p1, v0, v1, v2}, Lcaf/io/w;->a(Lcaf/io/w$b;Lcom/google/mlkit/vision/common/InputImage;Lcaf/io/w$a;)V

    :goto_0
    return-void
.end method

.method private m(Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/FaceLivenessParam;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2
    sget-object v0, Lcaf/io/L;->u:Lcaf/io/Z;

    invoke-virtual {v0}, Lcaf/io/Z;->a()Lcaf/io/O;

    move-result-object v0

    check-cast v0, Lcaf/io/E$a;

    sget-object v4, Lcaf/io/e;->a:Ljava/lang/String;

    iget-object v5, v1, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v5}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->e()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-interface {v0, v4, v5, v6}, Lcaf/io/E$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/FaceLivenessParam;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 4
    iget-object v2, v1, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->finishPost()V

    .line 5
    iget-object v2, v1, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setLoadingStatus(Z)V

    .line 6
    sget-object v2, Lcaf/io/L$b;->f:Lcaf/io/L$b;

    iput-object v2, v1, Lcaf/io/L;->i:Lcaf/io/L$b;

    .line 7
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;

    .line 8
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_11

    if-eqz v2, :cond_11

    .line 9
    sget-object v0, Lcaf/io/t;->r:Lcaf/io/t;

    new-instance v6, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/LivenessVerifiedEvent;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->isAlive()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->getImageUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v4, v5, v9}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/LivenessVerifiedEvent;-><init>(Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 10
    sget-object v4, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v4, v0, v6}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 11
    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcaf/io/L;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 13
    :cond_0
    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 14
    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->getOpenEyesProbability()D

    move-result-wide v4

    iget-object v0, v1, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->k()D

    move-result-wide v9

    cmpg-double v0, v4, v9

    if-gez v0, :cond_1

    const-wide v2, -0x26b53da67cb6L

    .line 15
    invoke-static {v2, v3}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    const-wide v2, -0x26c13da67cb6L

    invoke-static {v2, v3}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcaf/io/L;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 16
    :cond_1
    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    .line 17
    iget-object v0, v1, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->L()Z

    move-result v0

    const-wide v5, -0x903da67cb6L

    const-string v9, "tracking_id"

    if-eqz v0, :cond_9

    .line 18
    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->getFrameInfo()Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FrameInfo;

    move-result-object v0

    .line 19
    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lcaf/io/L;->n:Lcaf/io/k;

    invoke-virtual {v11}, Lcaf/io/k;->c()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v11}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->c()Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    move-result-object v11

    check-cast v11, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;

    if-nez v11, :cond_2

    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FrameInfo;->getIndex()I

    move-result v12

    .line 21
    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FrameInfo;->getTotal()I

    move-result v0

    .line 22
    new-instance v13, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 23
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 24
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1c

    if-lt v14, v15, :cond_3

    .line 25
    invoke-virtual {v13, v12}, Landroid/media/MediaMetadataRetriever;->getFrameAtIndex(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    move-object v10, v0

    goto :goto_1

    .line 26
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v11}, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;->getTime()I

    move-result v10

    .line 28
    div-int/2addr v0, v10

    int-to-long v10, v0

    int-to-long v14, v12

    const-wide/32 v16, 0xf4240

    mul-long v14, v14, v16

    .line 29
    div-long/2addr v14, v10

    const/4 v0, 0x3

    .line 30
    invoke-virtual {v13, v14, v15, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 31
    :goto_1
    :try_start_1
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v11, v0

    .line 32
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    .line 33
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :try_start_3
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v10, v0

    .line 35
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    move-object v10, v8

    .line 36
    :goto_3
    iget-object v0, v1, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcaf/io/L;->F()Ljava/lang/String;

    move-result-object v11

    .line 37
    new-instance v12, Landroid/content/ContextWrapper;

    invoke-direct {v12, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {v12}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 39
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v13, -0x22f53da67cb6L

    invoke-static {v13, v14}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    :try_start_4
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 42
    :try_start_5
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x64

    invoke-virtual {v10, v0, v13, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 43
    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto/16 :goto_9

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-object v12, v8

    .line 44
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v12, :cond_4

    .line 45
    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 47
    :cond_4
    :goto_5
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v10, :cond_5

    .line 48
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 49
    :cond_5
    new-instance v15, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    iget-object v10, v1, Lcaf/io/L;->n:Lcaf/io/k;

    invoke-virtual {v10}, Lcaf/io/k;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->getSignedResponse()Ljava/lang/String;

    move-result-object v13

    .line 50
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v2

    if-nez v2, :cond_6

    move-object v14, v8

    goto :goto_7

    .line 51
    :cond_6
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {v2}, Lcaf/io/b;->b(Lcaf/io/b;)Landroid/content/Context;

    move-result-object v2

    goto :goto_6

    :cond_7
    move-object v2, v8

    .line 52
    :goto_6
    sget v11, Lcaf/io/M;->a:I

    .line 53
    invoke-static {v5, v6}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 54
    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    .line 55
    :goto_7
    iget-object v2, v1, Lcaf/io/L;->n:Lcaf/io/k;

    invoke-virtual {v2}, Lcaf/io/k;->a()I

    move-result v2

    move-object v9, v15

    move-object v11, v0

    move-object v12, v4

    move-object v4, v15

    move v15, v2

    invoke-direct/range {v9 .. v15}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v4, v1, Lcaf/io/L;->h:Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object v8, v12

    :goto_8
    move-object v2, v0

    move-object v12, v8

    :goto_9
    if-eqz v12, :cond_8

    .line 56
    :try_start_9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v3, v0

    .line 57
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 58
    :cond_8
    :goto_a
    throw v2

    .line 59
    :goto_b
    :try_start_a
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_c

    :catch_7
    move-exception v0

    move-object v3, v0

    .line 60
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    :goto_c
    throw v2

    .line 62
    :cond_9
    new-instance v0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    iget-object v10, v1, Lcaf/io/L;->n:Lcaf/io/k;

    invoke-virtual {v10}, Lcaf/io/k;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->getSignedResponse()Ljava/lang/String;

    move-result-object v12

    .line 63
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v2

    if-nez v2, :cond_a

    move-object v13, v8

    goto :goto_e

    .line 64
    :cond_a
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-static {v2}, Lcaf/io/b;->b(Lcaf/io/b;)Landroid/content/Context;

    move-result-object v2

    goto :goto_d

    :cond_b
    move-object v2, v8

    .line 65
    :goto_d
    sget v11, Lcaf/io/M;->a:I

    .line 66
    invoke-static {v5, v6}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 67
    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    .line 68
    :goto_e
    iget-object v2, v1, Lcaf/io/L;->n:Lcaf/io/k;

    invoke-virtual {v2}, Lcaf/io/k;->a()I

    move-result v14

    move-object v9, v0

    move-object v11, v4

    invoke-direct/range {v9 .. v14}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, v1, Lcaf/io/L;->h:Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    move-object v0, v8

    .line 69
    :goto_f
    sget-object v2, Lcaf/io/t;->g:Lcaf/io/t;

    new-instance v4, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureFinishedEvent;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-wide v9, v1, Lcaf/io/L;->p:J

    sub-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v1, Lcaf/io/L;->j:Lcaf/io/l;

    invoke-direct {v4, v5, v6}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureFinishedEvent;-><init>(Ljava/lang/Long;Lcaf/io/l;)V

    .line 70
    sget-object v5, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v5, v2, v4}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 71
    iget-object v2, v1, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->n()Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;->shouldShowPreview()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 72
    iput-boolean v7, v1, Lcaf/io/L;->t:Z

    .line 73
    iget-object v2, v1, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v2, v3}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setCameraVisibility(Z)V

    .line 74
    invoke-virtual {v1, v3, v8}, Lcaf/io/L;->a(ZLandroid/graphics/Bitmap;)V

    .line 75
    iget-object v2, v1, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->M()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 76
    invoke-direct {v1, v0}, Lcaf/io/L;->B(Ljava/lang/String;)V

    goto :goto_11

    .line 77
    :cond_c
    iget-object v2, v1, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    .line 78
    iget-object v3, v1, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v3}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->L()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_10

    :cond_d
    iget-object v0, v1, Lcaf/io/L;->n:Lcaf/io/k;

    invoke-virtual {v0}, Lcaf/io/k;->c()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_10
    invoke-virtual {v2, v0}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Ljava/lang/String;)V

    goto :goto_11

    .line 80
    :cond_e
    iget-object v0, v1, Lcaf/io/L;->h:Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    .line 81
    iget-object v2, v1, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->M()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 82
    invoke-direct {v1, v0}, Lcaf/io/L;->n(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)V

    goto :goto_11

    .line 83
    :cond_f
    iget-object v2, v1, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v2, v0, v8}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    .line 84
    :goto_11
    iget-object v0, v1, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v7}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setStepDoneSuccessfullyStatus(Z)V

    goto/16 :goto_13

    .line 85
    :cond_10
    iget-object v0, v1, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v7}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 86
    iget-object v0, v1, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    sget-object v2, Lcaf/io/g0;->m:Lcaf/io/g0;

    invoke-virtual {v0, v2}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcaf/io/g0;)V

    .line 87
    sget-object v0, Lcaf/io/t;->i:Lcaf/io/t;

    new-instance v2, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;

    iget-object v3, v1, Lcaf/io/L;->j:Lcaf/io/l;

    sget-object v5, Lcaf/io/B;->i:Lcaf/io/B;

    invoke-direct {v2, v3, v5}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;-><init>(Lcaf/io/l;Lcaf/io/B;)V

    .line 88
    invoke-virtual {v4, v0, v2}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 89
    iget-object v0, v1, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v0

    iget-object v2, v1, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v0, v2}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getInvalidFaceMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcaf/io/L;->D(Ljava/lang/String;)V

    goto :goto_13

    .line 90
    :cond_11
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v3

    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_13

    .line 91
    iget-object v3, v1, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v3, v7}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 92
    iget-object v3, v1, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    sget-object v4, Lcaf/io/g0;->m:Lcaf/io/g0;

    invoke-virtual {v3, v4}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcaf/io/g0;)V

    if-eqz v2, :cond_12

    .line 93
    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/FaceLiveness;->getRequestId()Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_12
    const-wide v2, -0x26c23da67cb6L

    invoke-static {v2, v3}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 94
    :goto_12
    sget-object v3, Lcaf/io/t;->y:Lcaf/io/t;

    new-instance v4, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/ServerDownEvent;

    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v2, v0}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/ServerDownEvent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v0, v3, v4}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 96
    iget-object v0, v1, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v0

    iget-object v2, v1, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v0, v2}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getInvalidFaceMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcaf/io/L;->D(Ljava/lang/String;)V

    goto :goto_13

    .line 97
    :cond_13
    new-instance v2, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    new-instance v3, Lcom/combateafraude/passivefaceliveness/output/failure/ServerReason;

    invoke-virtual {v0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-static {v4}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ServerUnsuccessful;->createFromJSON(Lokhttp3/ResponseBody;)Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ServerUnsuccessful;

    move-result-object v4

    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v0

    invoke-direct {v3, v4, v0}, Lcom/combateafraude/passivefaceliveness/output/failure/ServerReason;-><init>(Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ServerUnsuccessful;I)V

    invoke-direct {v2, v3}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V

    .line 98
    sget-object v0, Lcaf/io/t;->t:Lcaf/io/t;

    new-instance v3, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {v3, v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)V

    .line 99
    sget-object v4, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v4, v0, v3}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 100
    iget-object v0, v1, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v0, v2, v8}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    :goto_13
    return-void
.end method

.method private n(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->finishStep()V

    .line 3
    iget-object v0, p0, Lcaf/io/L;->k:Landroid/os/Handler;

    new-instance v1, Lcaf/io/l0;

    invoke-direct {v1, p0, p1}, Lcaf/io/l0;-><init>(Lcaf/io/L;Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)V

    iget-object p1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->d()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private o(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    .line 3
    iget-object v1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->L()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcaf/io/L;->n:Lcaf/io/k;

    invoke-virtual {p1}, Lcaf/io/k;->c()Ljava/lang/String;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-wide v6, -0x26d23da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_1
    const-wide v6, -0x26ed3da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-wide v6, -0x26c33da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-wide v6, -0x27093da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_4
    const-wide v6, -0x26fa3da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_5
    const-wide v6, -0x26e13da67cb6L

    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    .line 8
    sget-object p1, Lcaf/io/g0;->m:Lcaf/io/g0;

    .line 9
    new-instance v0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;

    iget-object v1, p0, Lcaf/io/L;->j:Lcaf/io/l;

    sget-object v2, Lcaf/io/B;->g:Lcaf/io/B;

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;-><init>(Lcaf/io/l;Lcaf/io/B;)V

    goto/16 :goto_2

    .line 10
    :cond_1
    sget-object p1, Lcaf/io/g0;->e:Lcaf/io/g0;

    .line 11
    new-instance v0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;

    iget-object p2, p0, Lcaf/io/L;->j:Lcaf/io/l;

    sget-object v1, Lcaf/io/B;->e:Lcaf/io/B;

    invoke-direct {v0, p2, v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;-><init>(Lcaf/io/l;Lcaf/io/B;)V

    .line 12
    iget-object p2, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object p2

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {p2, v1}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getFaceNotFittedMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2

    .line 13
    :cond_2
    sget-object p1, Lcaf/io/g0;->h:Lcaf/io/g0;

    .line 14
    new-instance v0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;

    iget-object p2, p0, Lcaf/io/L;->j:Lcaf/io/l;

    sget-object v1, Lcaf/io/B;->d:Lcaf/io/B;

    invoke-direct {v0, p2, v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;-><init>(Lcaf/io/l;Lcaf/io/B;)V

    .line 15
    iget-object p2, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object p2

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {p2, v1}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getFaceTooCloseMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 16
    :cond_3
    sget-object p1, Lcaf/io/g0;->g:Lcaf/io/g0;

    .line 17
    new-instance v0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;

    iget-object p2, p0, Lcaf/io/L;->j:Lcaf/io/l;

    sget-object v1, Lcaf/io/B;->c:Lcaf/io/B;

    invoke-direct {v0, p2, v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;-><init>(Lcaf/io/l;Lcaf/io/B;)V

    .line 18
    iget-object p2, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object p2

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {p2, v1}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getFaceTooFarMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 19
    :cond_4
    sget-object p1, Lcaf/io/g0;->d:Lcaf/io/g0;

    .line 20
    new-instance v0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;

    iget-object p2, p0, Lcaf/io/L;->j:Lcaf/io/l;

    sget-object v1, Lcaf/io/B;->h:Lcaf/io/B;

    invoke-direct {v0, p2, v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;-><init>(Lcaf/io/l;Lcaf/io/B;)V

    .line 21
    iget-object p2, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object p2

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {p2, v1}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getEyesClosedMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 22
    :cond_5
    sget-object p1, Lcaf/io/g0;->f:Lcaf/io/g0;

    .line 23
    new-instance v0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;

    iget-object p2, p0, Lcaf/io/L;->j:Lcaf/io/l;

    sget-object v1, Lcaf/io/B;->b:Lcaf/io/B;

    invoke-direct {v0, p2, v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;-><init>(Lcaf/io/l;Lcaf/io/B;)V

    .line 24
    iget-object p2, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object p2

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {p2, v1}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getFaceNotFoundMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 25
    :cond_6
    sget-object p1, Lcaf/io/g0;->l:Lcaf/io/g0;

    .line 26
    new-instance v0, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;

    iget-object p2, p0, Lcaf/io/L;->j:Lcaf/io/l;

    sget-object v1, Lcaf/io/B;->f:Lcaf/io/B;

    invoke-direct {v0, p2, v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CaptureInvalidEvent;-><init>(Lcaf/io/l;Lcaf/io/B;)V

    .line 27
    iget-object p2, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object p2

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {p2, v1}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getMultipleFaceDetectedMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    .line 28
    :goto_2
    iget-object v1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v1, v5}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setValidationFailureStatus(Z)V

    .line 29
    iget-object v1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v1, p1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setValidationFailureId(Lcaf/io/g0;)V

    .line 30
    sget-object p1, Lcaf/io/t;->i:Lcaf/io/t;

    .line 31
    sget-object v1, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v1, p1, v0}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 32
    invoke-direct {p0, p2}, Lcaf/io/L;->D(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x57c4e4ab -> :sswitch_5
        -0x33c4f055 -> :sswitch_4
        0xdcaac90 -> :sswitch_3
        0x281863a1 -> :sswitch_2
        0x41be918a -> :sswitch_1
        0x5b4b5774 -> :sswitch_0
    .end sparse-switch
.end method

.method private synthetic q(Ljava/lang/Void;)V
    .locals 1

    .line 3
    iget-object p1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method private r(Lcom/google/mlkit/vision/common/InputImage;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getRotationDegrees()I

    move-result v0

    .line 2
    rem-int/lit16 v0, v0, 0xb4

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getWidth()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getHeight()I

    move-result p1

    :goto_1
    return p1
.end method

.method private s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcaf/io/L;->i:Lcaf/io/L$b;

    sget-object v1, Lcaf/io/L$b;->b:Lcaf/io/L$b;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcaf/io/L$b;->c:Lcaf/io/L$b;

    .line 3
    iput-object v0, p0, Lcaf/io/L;->i:Lcaf/io/L$b;

    .line 4
    iget-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->v()I

    move-result v0

    invoke-direct {p0, v0}, Lcaf/io/L;->t(I)V

    .line 5
    sget-object v0, Lcaf/io/l;->c:Lcaf/io/l;

    iput-object v0, p0, Lcaf/io/L;->j:Lcaf/io/l;

    .line 6
    iget-object v1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v1, v0}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setCaptureModeStatus(Lcaf/io/l;)V

    .line 7
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setButton(Z)V

    .line 8
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setManualCaptureButtonVisibility(Z)V

    .line 9
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setReadyToCaptureStatus(Z)V

    .line 10
    sget-object v0, Lcaf/io/C;->a:Lcaf/io/C;

    invoke-virtual {p0, v0}, Lcaf/io/L;->a(Lcaf/io/C;)V

    .line 11
    iget-object v0, p0, Lcaf/io/L;->f:Lcaf/io/j;

    check-cast v0, Lcaf/io/h;

    invoke-virtual {v0}, Lcaf/io/h;->a()V

    .line 12
    iput-boolean v1, p0, Lcaf/io/L;->s:Z

    return-void
.end method

.method private t(I)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcaf/io/L;->k:Landroid/os/Handler;

    new-instance v1, Lcaf/io/s0;

    invoke-direct {v1, p0}, Lcaf/io/s0;-><init>(Lcaf/io/L;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic u(Lcaf/io/L;Lcaf/io/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcaf/io/L;->v(Lcaf/io/k;)V

    return-void
.end method

.method private v(Lcaf/io/k;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcaf/io/L;->n:Lcaf/io/k;

    .line 2
    iget-object v0, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    new-instance v1, Lcaf/io/k0;

    invoke-direct {v1, p0}, Lcaf/io/k0;-><init>(Lcaf/io/L;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p1}, Lcaf/io/k;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcaf/io/L;->E(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic w(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method private x(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcaf/io/L;->n:Lcaf/io/k;

    invoke-virtual {v1}, Lcaf/io/k;->b()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {p1}, Lcaf/io/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-nez p1, :cond_2

    .line 4
    new-instance p1, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    new-instance v1, Lcom/combateafraude/passivefaceliveness/output/failure/SecurityReason;

    iget-object v2, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    sget v3, Lcom/combateafraude/passivefaceliveness/R$string;->error_900_message:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x384

    invoke-direct {v1, v2, v3}, Lcom/combateafraude/passivefaceliveness/output/failure/SecurityReason;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v1}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V

    .line 5
    iget-object v1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->M()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lcaf/io/L;->n(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v1, p1, v0}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    :goto_1
    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->c()Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;->getContentType()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v1, p0, Lcaf/io/L;->n:Lcaf/io/k;

    iget-object v2, p0, Lcaf/io/L;->r:Ljava/lang/String;

    iget-object v3, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    iget-object v4, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-static {v1, v2, v3, v4, p1}, Lcaf/io/f0;->a(Lcaf/io/k;Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    new-instance p1, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/Person;

    iget-object v1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->m()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/Person;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/FaceLivenessParam;

    iget-object v2, p0, Lcaf/io/L;->q:Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;

    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;->getBucket()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcaf/io/L;->q:Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;

    invoke-virtual {v3}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ImageUploadParam;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v4, v0

    goto :goto_3

    :cond_3
    const-string v4, "tracking_id"

    .line 13
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {v5}, Lcaf/io/b;->b(Lcaf/io/b;)Landroid/content/Context;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v5, v0

    .line 14
    :goto_2
    sget v6, Lcaf/io/M;->a:I

    const-wide v6, -0x903da67cb6L

    .line 15
    invoke-static {v6, v7}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 16
    invoke-interface {v5, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    :goto_3
    invoke-direct {v1, v2, v3, p1, v4}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/FaceLivenessParam;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/Person;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, v1}, Lcaf/io/L;->m(Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/FaceLivenessParam;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-wide v2, -0x27193da67cb6L

    .line 21
    invoke-static {v2, v3}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 22
    new-instance v2, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    new-instance v3, Lcom/combateafraude/passivefaceliveness/output/failure/ServerReason;

    new-instance v4, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ServerUnsuccessful;

    invoke-direct {v4, v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ServerUnsuccessful;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x190

    invoke-direct {v3, v4, v1}, Lcom/combateafraude/passivefaceliveness/output/failure/ServerReason;-><init>(Lcom/combateafraude/passivefaceliveness/controller/server/model/response/ServerUnsuccessful;I)V

    invoke-direct {v2, v3}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V

    .line 23
    sget-object v1, Lcaf/io/t;->t:Lcaf/io/t;

    new-instance v3, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {v3, v2}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)V

    .line 24
    sget-object v4, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v4, v1, v3}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    goto :goto_4

    .line 25
    :cond_5
    new-instance v2, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    new-instance v1, Lcom/combateafraude/passivefaceliveness/output/failure/NetworkReason;

    invoke-direct {v1, p1}, Lcom/combateafraude/passivefaceliveness/output/failure/NetworkReason;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v2, v1}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V

    .line 26
    sget-object v1, Lcaf/io/t;->u:Lcaf/io/t;

    new-instance v3, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    iget-object v4, p0, Lcaf/io/L;->h:Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    invoke-direct {v3, v4}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)V

    .line 27
    sget-object v4, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v4, v1, v3}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 28
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    iget-object p1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {p1, v2, v0}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    :goto_5
    return-void
.end method

.method private y(Ljava/lang/Void;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setButton(Z)V

    .line 4
    iget-object p1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v0}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setManualCaptureButtonVisibility(Z)V

    .line 5
    invoke-direct {p0}, Lcaf/io/L;->F()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcaf/io/L;->G(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private z(Lcom/google/mlkit/vision/common/InputImage;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getRotationDegrees()I

    move-result v0

    .line 2
    rem-int/lit16 v0, v0, 0xb4

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getHeight()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getWidth()I

    move-result p1

    :goto_1
    return p1
.end method


# virtual methods
.method public a(Lcaf/io/C;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, p1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setMaskStatus(Lcaf/io/C;)V

    .line 84
    sget-object v0, Lcaf/io/C;->b:Lcaf/io/C;

    if-ne p1, v0, :cond_0

    .line 85
    iget-object p1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    iget-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->p()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setMask(I)V

    goto :goto_0

    .line 86
    :cond_0
    sget-object v0, Lcaf/io/C;->c:Lcaf/io/C;

    if-ne p1, v0, :cond_1

    .line 87
    iget-object p1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    iget-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setMask(I)V

    goto :goto_0

    .line 88
    :cond_1
    sget-object v0, Lcaf/io/C;->a:Lcaf/io/C;

    if-ne p1, v0, :cond_2

    .line 89
    iget-object p1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    iget-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->y()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setMask(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized a(Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 7

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcaf/io/L;->i:Lcaf/io/L$b;

    sget-object v1, Lcaf/io/L$b;->c:Lcaf/io/L$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcaf/io/L;->z(Lcom/google/mlkit/vision/common/InputImage;)I

    move-result v0

    .line 4
    invoke-direct {p0, p1}, Lcaf/io/L;->r(Lcom/google/mlkit/vision/common/InputImage;)I

    move-result p1

    .line 5
    iget-object v1, p0, Lcaf/io/L;->d:Lcaf/io/w;

    invoke-virtual {v1}, Lcaf/io/w;->b()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    .line 6
    sget-object p1, Lcaf/io/g0;->f:Lcaf/io/g0;

    invoke-direct {p0, p1}, Lcaf/io/L;->k(Lcaf/io/g0;)V

    .line 7
    iget-object p1, p0, Lcaf/io/L;->d:Lcaf/io/w;

    invoke-virtual {p1}, Lcaf/io/w;->e()V

    .line 8
    iput-object v2, p0, Lcaf/io/L;->n:Lcaf/io/k;

    .line 9
    iget-object p1, p0, Lcaf/io/L;->f:Lcaf/io/j;

    check-cast p1, Lcaf/io/h;

    invoke-virtual {p1}, Lcaf/io/h;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 10
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcaf/io/L;->d:Lcaf/io/w;

    invoke-virtual {v1}, Lcaf/io/w;->b()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    .line 11
    sget-object p1, Lcaf/io/g0;->l:Lcaf/io/g0;

    invoke-direct {p0, p1}, Lcaf/io/L;->k(Lcaf/io/g0;)V

    .line 12
    iget-object p1, p0, Lcaf/io/L;->d:Lcaf/io/w;

    invoke-virtual {p1}, Lcaf/io/w;->e()V

    .line 13
    iput-object v2, p0, Lcaf/io/L;->n:Lcaf/io/k;

    .line 14
    iget-object p1, p0, Lcaf/io/L;->f:Lcaf/io/j;

    check-cast p1, Lcaf/io/h;

    invoke-virtual {p1}, Lcaf/io/h;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 15
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcaf/io/L;->d:Lcaf/io/w;

    invoke-virtual {v1}, Lcaf/io/w;->a()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mlkit/vision/face/Face;

    .line 16
    invoke-virtual {v1}, Lcom/google/mlkit/vision/face/Face;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v4

    .line 17
    invoke-static {v0, p1}, Lcaf/io/w;->a(II)Landroid/graphics/Rect;

    move-result-object p1

    .line 18
    invoke-virtual {v4, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v5

    const/16 v6, 0x320

    if-eqz v5, :cond_3

    .line 19
    sget-object p1, Lcaf/io/g0;->h:Lcaf/io/g0;

    invoke-direct {p0, p1}, Lcaf/io/L;->k(Lcaf/io/g0;)V

    .line 20
    iget-object p1, p0, Lcaf/io/L;->d:Lcaf/io/w;

    invoke-virtual {p1}, Lcaf/io/w;->e()V

    .line 21
    invoke-direct {p0, v6}, Lcaf/io/L;->g(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 22
    :cond_3
    :try_start_4
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 23
    sget-object p1, Lcaf/io/g0;->e:Lcaf/io/g0;

    invoke-direct {p0, p1}, Lcaf/io/L;->k(Lcaf/io/g0;)V

    .line 24
    iget-object p1, p0, Lcaf/io/L;->d:Lcaf/io/w;

    invoke-virtual {p1}, Lcaf/io/w;->e()V

    .line 25
    iget-object p1, p0, Lcaf/io/L;->f:Lcaf/io/j;

    check-cast p1, Lcaf/io/h;

    invoke-virtual {p1}, Lcaf/io/h;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 26
    :cond_4
    :try_start_5
    invoke-static {v1, v0}, Lcaf/io/w;->a(Lcom/google/mlkit/vision/face/Face;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 27
    sget-object p1, Lcaf/io/g0;->g:Lcaf/io/g0;

    invoke-direct {p0, p1}, Lcaf/io/L;->k(Lcaf/io/g0;)V

    .line 28
    invoke-direct {p0, v6}, Lcaf/io/L;->g(I)V

    .line 29
    iget-object p1, p0, Lcaf/io/L;->d:Lcaf/io/w;

    invoke-virtual {p1}, Lcaf/io/w;->e()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    .line 30
    :cond_5
    :try_start_6
    invoke-virtual {v1}, Lcom/google/mlkit/vision/face/Face;->getHeadEulerAngleX()F

    move-result p1

    invoke-static {p1}, Lcaf/io/w;->a(F)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 31
    sget-object p1, Lcaf/io/g0;->i:Lcaf/io/g0;

    invoke-direct {p0, p1}, Lcaf/io/L;->k(Lcaf/io/g0;)V

    goto :goto_0

    .line 32
    :cond_6
    invoke-virtual {v1}, Lcom/google/mlkit/vision/face/Face;->getHeadEulerAngleY()F

    move-result p1

    invoke-static {p1}, Lcaf/io/w;->a(F)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 33
    sget-object p1, Lcaf/io/g0;->j:Lcaf/io/g0;

    invoke-direct {p0, p1}, Lcaf/io/L;->k(Lcaf/io/g0;)V

    goto :goto_0

    .line 34
    :cond_7
    invoke-virtual {v1}, Lcom/google/mlkit/vision/face/Face;->getHeadEulerAngleZ()F

    move-result p1

    invoke-static {p1}, Lcaf/io/w;->a(F)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 35
    sget-object p1, Lcaf/io/g0;->k:Lcaf/io/g0;

    invoke-direct {p0, p1}, Lcaf/io/L;->k(Lcaf/io/g0;)V

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_9

    const/16 p1, 0x1f4

    .line 36
    invoke-direct {p0, p1}, Lcaf/io/L;->g(I)V

    .line 37
    iget-object p1, p0, Lcaf/io/L;->d:Lcaf/io/w;

    invoke-virtual {p1}, Lcaf/io/w;->e()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    .line 38
    :cond_9
    :try_start_7
    sget-object p1, Lcaf/io/C;->c:Lcaf/io/C;

    invoke-virtual {p0, p1}, Lcaf/io/L;->a(Lcaf/io/C;)V

    .line 39
    iget-object p1, p0, Lcaf/io/L;->g:Lcaf/io/T;

    invoke-virtual {p1}, Lcaf/io/T;->d()Z

    move-result p1

    if-nez p1, :cond_a

    .line 40
    iget-object p1, p0, Lcaf/io/L;->g:Lcaf/io/T;

    invoke-virtual {p1}, Lcaf/io/T;->c()Lcaf/io/g0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcaf/io/L;->k(Lcaf/io/g0;)V

    const/16 p1, 0x12c

    .line 41
    invoke-direct {p0, p1}, Lcaf/io/L;->g(I)V

    .line 42
    iget-object p1, p0, Lcaf/io/L;->d:Lcaf/io/w;

    invoke-virtual {p1}, Lcaf/io/w;->e()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    .line 43
    :cond_a
    :try_start_8
    iget-object p1, p0, Lcaf/io/L;->d:Lcaf/io/w;

    invoke-virtual {p1}, Lcaf/io/w;->d()V

    .line 44
    iget-object p1, p0, Lcaf/io/L;->d:Lcaf/io/w;

    invoke-virtual {p1}, Lcaf/io/w;->c()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long p1, v0, v4

    if-nez p1, :cond_b

    .line 45
    iget-object p1, p0, Lcaf/io/L;->d:Lcaf/io/w;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcaf/io/w;->a(J)V

    .line 46
    :cond_b
    iget-object p1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    iget-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v0

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getHoldItMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 47
    iput-boolean v3, p0, Lcaf/io/L;->s:Z

    .line 48
    invoke-direct {p0}, Lcaf/io/L;->K()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 49
    iget-object p1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v3}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setReadyToCaptureStatus(Z)V

    .line 50
    invoke-direct {p0}, Lcaf/io/L;->F()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcaf/io/L;->G(Ljava/lang/String;)V

    .line 51
    :cond_c
    iget-object p1, p0, Lcaf/io/L;->f:Lcaf/io/j;

    check-cast p1, Lcaf/io/h;

    invoke-virtual {p1}, Lcaf/io/h;->a()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Exception;)V
    .locals 1

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object p1, p0, Lcaf/io/L;->j:Lcaf/io/l;

    sget-object v0, Lcaf/io/l;->b:Lcaf/io/l;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcaf/io/L;->n:Lcaf/io/k;

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Lcaf/io/k;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcaf/io/L;->E(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 54
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcaf/io/L;->i:Lcaf/io/L$b;

    sget-object v0, Lcaf/io/L$b;->c:Lcaf/io/L$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v0, :cond_1

    monitor-exit p0

    return-void

    .line 55
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcaf/io/L;->g:Lcaf/io/T;

    invoke-virtual {p1}, Lcaf/io/T;->d()Z

    move-result p1

    if-nez p1, :cond_3

    .line 56
    iget-object p1, p0, Lcaf/io/L;->g:Lcaf/io/T;

    invoke-virtual {p1}, Lcaf/io/T;->c()Lcaf/io/g0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcaf/io/L;->k(Lcaf/io/g0;)V

    .line 57
    iget-object p1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setButton(Z)V

    .line 58
    iget-object p1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v0}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setManualCaptureButtonVisibility(Z)V

    .line 59
    iget-object p1, p0, Lcaf/io/L;->d:Lcaf/io/w;

    invoke-virtual {p1}, Lcaf/io/w;->e()V

    .line 60
    iget-object p1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->N()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->C()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 61
    iget-object p1, p0, Lcaf/io/L;->f:Lcaf/io/j;

    check-cast p1, Lcaf/io/h;

    invoke-virtual {p1}, Lcaf/io/h;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    .line 62
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcaf/io/L;->A()V

    .line 63
    iget-object p1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->N()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->C()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 64
    iget-object p1, p0, Lcaf/io/L;->f:Lcaf/io/j;

    check-cast p1, Lcaf/io/h;

    invoke-virtual {p1}, Lcaf/io/h;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcaf/io/L;->t:Z

    .line 66
    iget-object v1, p0, Lcaf/io/L;->d:Lcaf/io/w;

    invoke-virtual {v1}, Lcaf/io/w;->e()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->finishStep()V

    .line 69
    iget-object p1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    iget-object v0, p0, Lcaf/io/L;->h:Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    invoke-virtual {p1, v0, v1}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    goto :goto_1

    .line 70
    :cond_0
    invoke-direct {p0}, Lcaf/io/L;->a0()V

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcaf/io/L;->p:J

    .line 72
    iget-object p1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    iget-object v2, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v2

    iget-object v3, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v2, v3}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getStepName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->startStep(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, v0, v1}, Lcaf/io/L;->a(ZLandroid/graphics/Bitmap;)V

    .line 74
    iget-object p1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setCameraVisibility(Z)V

    .line 75
    iput-object v1, p0, Lcaf/io/L;->n:Lcaf/io/k;

    .line 76
    iput-boolean v0, p0, Lcaf/io/L;->s:Z

    .line 77
    iget-object p1, p0, Lcaf/io/L;->f:Lcaf/io/j;

    check-cast p1, Lcaf/io/h;

    invoke-virtual {p1}, Lcaf/io/h;->a()V

    .line 78
    iget-object p1, p0, Lcaf/io/L;->j:Lcaf/io/l;

    sget-object v0, Lcaf/io/l;->b:Lcaf/io/l;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->N()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-direct {p0}, Lcaf/io/L;->s()V

    goto :goto_1

    .line 80
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcaf/io/L;->A()V

    :goto_1
    return-void
.end method

.method public a(ZLandroid/graphics/Bitmap;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, p1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setPreviewVisibility(Z)V

    .line 82
    iget-object p1, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setPreviewBitMap(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    sget-object v0, Lcaf/io/t;->z:Lcaf/io/t;

    new-instance v1, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CameraErrorEvent;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/CameraErrorEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {p1, v0, v1}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 3
    iget-object p1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    new-instance v0, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    new-instance v1, Lcom/combateafraude/passivefaceliveness/output/failure/LibraryReason;

    sget v2, Lcom/combateafraude/passivefaceliveness/R$string;->camera_helper_error_caf:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/combateafraude/passivefaceliveness/output/failure/LibraryReason;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method public c(Lcaf/io/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcaf/io/L;->n:Lcaf/io/k;

    return-void
.end method

.method public d()Lcaf/io/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/L;->n:Lcaf/io/k;

    return-object v0
.end method

.method public declared-synchronized d(Lcom/google/mlkit/vision/common/InputImage;)V
    .locals 2
    .param p1    # Lcom/google/mlkit/vision/common/InputImage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeOptInUsageError"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcaf/io/L;->l:Lcom/google/mlkit/vision/common/InputImage;

    .line 3
    iget-object v0, p0, Lcaf/io/L;->i:Lcaf/io/L$b;

    sget-object v1, Lcaf/io/L$b;->d:Lcaf/io/L$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    sget-object v1, Lcaf/io/L$b;->c:Lcaf/io/L$b;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcaf/io/L;->j:Lcaf/io/l;

    sget-object v1, Lcaf/io/l;->c:Lcaf/io/l;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcaf/io/L;->d:Lcaf/io/w;

    sget-object v1, Lcaf/io/w$b;->b:Lcaf/io/w$b;

    invoke-virtual {v0, v1, p1, p0}, Lcaf/io/w;->a(Lcaf/io/w$b;Lcom/google/mlkit/vision/common/InputImage;Lcaf/io/w$a;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcaf/io/L;->f:Lcaf/io/j;

    check-cast p1, Lcaf/io/h;

    invoke-virtual {p1}, Lcaf/io/h;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public e()Lcaf/io/Z;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcaf/io/Z<",
            "Lcaf/io/E$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Lcaf/io/Z;

    new-instance v2, Lcaf/io/E;

    invoke-direct {v2}, Lcaf/io/E;-><init>()V

    iget-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->q()I

    move-result v3

    iget-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->o()Lcom/combateafraude/passivefaceliveness/input/ProxySettings;

    move-result-object v4

    iget-object v5, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    iget-object v6, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    const-class v1, Lcaf/io/E$a;

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcaf/io/Z;-><init>(Ljava/lang/Class;Lcaf/io/d;ILcom/combateafraude/passivefaceliveness/input/ProxySettings;Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;Z)V

    return-object v8
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 3
    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method public p()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcaf/io/L;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcaf/io/L;->o:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->b()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcaf/io/L;->e:Lcaf/io/f;

    invoke-virtual {v1, v0}, Lcaf/io/f;->a(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcaf/io/L;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    iget-object v1, p0, Lcaf/io/L;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v1

    iget-object v2, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    invoke-virtual {v1, v2}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getFaceNotFittedMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->setStatus(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcaf/io/L;->e:Lcaf/io/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcaf/io/f;->a()V

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcaf/io/L;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcaf/io/L;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    :cond_1
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/L;->m:Lcaf/io/Q;

    invoke-virtual {v0}, Lcaf/io/Q;->g()V

    return-void
.end method
