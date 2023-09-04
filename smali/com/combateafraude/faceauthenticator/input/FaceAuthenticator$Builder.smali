.class public Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
.super Ljava/lang/Object;
.source "FaceAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->k:Ljava/lang/String;

    .line 3
    new-instance v7, Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;

    sget v2, Lcom/combateafraude/faceauthenticator/R$string;->sensor_unstable_caf:I

    const-wide/16 v3, 0x3e8

    const-wide v5, 0x3fe6666666666666L    # 0.7

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;-><init>(IJD)V

    iput-object v7, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->l:Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;

    .line 4
    new-instance v1, Lcom/combateafraude/faceauthenticator/input/ImageCapture;

    invoke-direct {v1}, Lcom/combateafraude/faceauthenticator/input/ImageCapture;-><init>()V

    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->m:Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

    .line 5
    new-instance v1, Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    invoke-direct {v1}, Lcom/combateafraude/faceauthenticator/input/MessageSettings;-><init>()V

    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->p:Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    .line 6
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->a:Ljava/lang/String;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->b:Z

    const/16 v1, 0x3c

    .line 8
    iput v1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->c:I

    .line 9
    sget v1, Lcom/combateafraude/faceauthenticator/R$style;->defaultStyle:I

    iput v1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->h:I

    .line 10
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->i:Z

    .line 11
    sget v1, Lcom/combateafraude/faceauthenticator/R$raw;->faceauthenticator:I

    iput v1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->j:I

    .line 12
    sget v1, Lcom/combateafraude/faceauthenticator/R$layout;->activity_face_authenticator:I

    iput v1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->d:I

    .line 13
    sget v1, Lcom/combateafraude/faceauthenticator/R$drawable;->ic_mask_face_green:I

    iput v1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->e:I

    .line 14
    sget v1, Lcom/combateafraude/faceauthenticator/R$drawable;->ic_mask_face_white:I

    iput v1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->f:I

    .line 15
    sget v1, Lcom/combateafraude/faceauthenticator/R$drawable;->ic_mask_face_red:I

    iput v1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->g:I

    .line 16
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->n:Z

    .line 17
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->o:Z

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->r:Z

    .line 19
    iput-boolean v1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->s:Z

    .line 20
    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->q:Lcom/combateafraude/faceauthenticator/input/CafStage;

    .line 21
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->t:Z

    .line 22
    iput-boolean v1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->u:Z

    .line 23
    iput v1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->v:I

    .line 24
    iput-boolean v1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->w:Z

    .line 25
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->x:Z

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 26
    iput-wide v2, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->y:D

    .line 27
    iput-boolean v1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->z:Z

    .line 28
    iput-boolean v1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->A:Z

    return-void
.end method

.method static synthetic A(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->i:Z

    return p0
.end method

.method static synthetic a(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->j:I

    return p0
.end method

.method static synthetic b(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->b:Z

    return p0
.end method

.method static synthetic d(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->l:Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;

    return-object p0
.end method

.method static synthetic f(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Lcom/combateafraude/faceauthenticator/input/CaptureSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->m:Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

    return-object p0
.end method

.method static synthetic g(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->n:Z

    return p0
.end method

.method static synthetic h(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->o:Z

    return p0
.end method

.method static synthetic i(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Lcom/combateafraude/faceauthenticator/input/MessageSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->p:Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    return-object p0
.end method

.method static synthetic j(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Lcom/combateafraude/faceauthenticator/input/CafStage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->q:Lcom/combateafraude/faceauthenticator/input/CafStage;

    return-object p0
.end method

.method static synthetic k(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->r:Z

    return p0
.end method

.method static synthetic l(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->s:Z

    return p0
.end method

.method static synthetic m(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->t:Z

    return p0
.end method

.method static synthetic n(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->c:I

    return p0
.end method

.method static synthetic o(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->u:Z

    return p0
.end method

.method static synthetic p(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->v:I

    return p0
.end method

.method static synthetic q(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->w:Z

    return p0
.end method

.method static synthetic r(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->x:Z

    return p0
.end method

.method static synthetic s(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->y:D

    return-wide v0
.end method

.method static synthetic t(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->z:Z

    return p0
.end method

.method static synthetic u(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->A:Z

    return p0
.end method

.method static synthetic v(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->d:I

    return p0
.end method

.method static synthetic w(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->e:I

    return p0
.end method

.method static synthetic x(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->f:I

    return p0
.end method

.method static synthetic y(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->g:I

    return p0
.end method

.method static synthetic z(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->h:I

    return p0
.end method


# virtual methods
.method public build()Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;
    .locals 2

    .line 1
    new-instance v0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;-><init>(Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$a;)V

    return-object v0
.end method

.method public enableBrightnessIncrease(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->t:Z

    return-object p0
.end method

.method public enableGoogleServices(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->n:Z

    return-object p0
.end method

.method public enableSwitchCameraButton(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->o:Z

    return-object p0
.end method

.method public setAnalyticsSettings(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->b:Z

    return-object p0
.end method

.method public setAudioSettings(I)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 2
    iput p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->j:I

    return-object p0
.end method

.method public setAudioSettings(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->i:Z

    return-object p0
.end method

.method public setCaptureSettings(Lcom/combateafraude/faceauthenticator/input/CaptureSettings;)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0
    .param p1    # Lcom/combateafraude/faceauthenticator/input/CaptureSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->m:Lcom/combateafraude/faceauthenticator/input/CaptureSettings;

    .line 2
    instance-of p1, p1, Lcom/combateafraude/faceauthenticator/input/VideoCapture;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->enableSwitchCameraButton(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;

    :cond_0
    return-object p0
.end method

.method public setEyesClosedSettings(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0
    .param p1    # Z
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 3
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->x:Z

    return-object p0
.end method

.method public setEyesClosedSettings(ZLjava/lang/Double;)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0
    .param p1    # Z
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.1
            to = 1.0
        .end annotation
    .end param

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->x:Z

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->y:D

    :cond_0
    return-object p0
.end method

.method public setLayout(Ljava/lang/Integer;)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->d:I

    :cond_0
    return-object p0
.end method

.method public setMask(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->e:I

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->f:I

    :cond_1
    if-eqz p3, :cond_2

    .line 3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->g:I

    :cond_2
    return-object p0
.end method

.method public setMessageSettings(Lcom/combateafraude/faceauthenticator/input/MessageSettings;)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->p:Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    :cond_0
    return-object p0
.end method

.method public setNetworkSettings(I)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->c:I

    return-object p0
.end method

.method public setPeopleId(Ljava/lang/String;)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->k:Ljava/lang/String;

    return-object p0
.end method

.method public setStabilitySensorSettings(Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0
    .param p1    # Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->l:Lcom/combateafraude/faceauthenticator/input/SensorStabilitySettings;

    return-object p0
.end method

.method public setStage(Lcom/combateafraude/faceauthenticator/input/CafStage;)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->q:Lcom/combateafraude/faceauthenticator/input/CafStage;

    :cond_0
    return-object p0
.end method

.method public setStyle(I)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->h:I

    return-object p0
.end method

.method public setUseAdb(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->A:Z

    return-object p0
.end method

.method public setUseDebug(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->u:Z

    return-object p0
.end method

.method public setUseDeveloperMode(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->z:Z

    return-object p0
.end method

.method public setUseEmulator(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->r:Z

    return-object p0
.end method

.method public setUseRoot(Z)Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator$Builder;->s:Z

    return-object p0
.end method
