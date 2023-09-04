.class public Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;
.super Ljava/lang/Object;
.source "FaceAuthenticator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    }
.end annotation


# static fields
.field public static final PARAMETER_NAME:Ljava/lang/String; = "FaceAuthenticator"


# instance fields
.field private A:Z

.field private a:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;

.field private m:Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

.field private n:Z

.field private o:Z

.field private p:Lcom/combateafraude/faceauthenticator/input/MessageSettings;

.field private q:Lcom/combateafraude/faceauthenticator/input/CafStage;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:Z

.field private x:Z

.field private y:D

.field private z:Z


# direct methods
.method private constructor <init>(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->b(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->c(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->b:Z

    .line 5
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->n(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)I

    move-result v0

    iput v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->c:I

    .line 6
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->v(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)I

    move-result v0

    iput v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->d:I

    .line 7
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->w(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)I

    move-result v0

    iput v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->e:I

    .line 8
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->x(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)I

    move-result v0

    iput v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->f:I

    .line 9
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->y(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)I

    move-result v0

    iput v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->g:I

    .line 10
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->z(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)I

    move-result v0

    iput v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->h:I

    .line 11
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->A(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->i:Z

    .line 12
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->a(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)I

    move-result v0

    iput v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->j:I

    .line 13
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->d(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->k:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->e(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->l:Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;

    .line 15
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->f(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->m:Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

    .line 16
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->g(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->n:Z

    .line 17
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->h(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->o:Z

    .line 18
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->i(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->p:Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    .line 19
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->j(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Lcom/combateafraude/faceauthenticator/input/CafStage;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->q:Lcom/combateafraude/faceauthenticator/input/CafStage;

    .line 20
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->k(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->r:Z

    .line 21
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->l(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->s:Z

    .line 22
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->m(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->t:Z

    .line 23
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->o(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->u:Z

    .line 24
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->p(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)I

    move-result v0

    iput v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->v:I

    .line 25
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->q(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->w:Z

    .line 26
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->r(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->x:Z

    .line 27
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->s(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->y:D

    .line 28
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->t(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->z:Z

    .line 29
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->u(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->A:Z

    .line 30
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->k:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing peopleId parameter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing mobileToken parameter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;-><init>(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)V

    return-void
.end method


# virtual methods
.method public getAppSignature()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->v:I

    return v0
.end method

.method public getAudioResId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->j:I

    return v0
.end method

.method public getCaptureSettings()Lcom/combateafraude/faceauthenticator/input/CaptureSettings;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->m:Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

    return-object v0
.end method

.method public getGreenMask()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->e:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->d:I

    return v0
.end method

.method public getMessageSettings()Lcom/combateafraude/faceauthenticator/input/MessageSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->p:Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    return-object v0
.end method

.method public getMobileToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenEyesThreshold()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->y:D

    return-wide v0
.end method

.method public getPeopleId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getRedMask()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->g:I

    return v0
.end method

.method public getRequestTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->c:I

    return v0
.end method

.method public getSensorStabilitySettings()Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->l:Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;

    return-object v0
.end method

.method public getStage()Lcom/combateafraude/faceauthenticator/input/CafStage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->q:Lcom/combateafraude/faceauthenticator/input/CafStage;

    return-object v0
.end method

.method public getStyleId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->h:I

    return v0
.end method

.method public getWhiteMask()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->f:I

    return v0
.end method

.method public isBrightnessIncrease()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->t:Z

    return v0
.end method

.method public isCheckAppSignature()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->w:Z

    return v0
.end method

.method public isEnableSound()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->i:Z

    return v0
.end method

.method public isGoogleServicesVersion()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->n:Z

    return v0
.end method

.method public isSwitchCameraButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->o:Z

    return v0
.end method

.method public isUseAdb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->A:Z

    return v0
.end method

.method public isUseAnalytics()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->b:Z

    return v0
.end method

.method public isUseDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->u:Z

    return v0
.end method

.method public isUseDeveloperMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->z:Z

    return v0
.end method

.method public isUseEmulator()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->r:Z

    return v0
.end method

.method public isUseOpenEyeValidation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->x:Z

    return v0
.end method

.method public isUseRoot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->s:Z

    return v0
.end method
