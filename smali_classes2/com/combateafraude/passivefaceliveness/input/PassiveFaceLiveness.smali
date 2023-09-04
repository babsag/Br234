.class public Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;
.super Ljava/lang/Object;
.source "PassiveFaceLiveness.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    }
.end annotation


# static fields
.field public static final PARAMETER_NAME:Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# instance fields
.field private A:Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "previewSettings"
    .end annotation
.end field

.field private final B:Lcom/combateafraude/passivefaceliveness/input/MaskType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mask"
    .end annotation
.end field

.field private final C:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "useGoogleServicesVersion"
    .end annotation
.end field

.field private final D:Lcom/combateafraude/passivefaceliveness/input/CafStage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stage"
    .end annotation
.end field

.field private final E:Lcom/combateafraude/passivefaceliveness/input/Resolution;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resolution"
    .end annotation
.end field

.field private final F:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audioResId"
    .end annotation
.end field

.field private final G:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brightnessIncrease"
    .end annotation
.end field

.field private final H:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s2"
    .end annotation
.end field

.field private final I:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoCaptureEnabled"
    .end annotation
.end field

.field private final J:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "useOpenEyeValidation"
    .end annotation
.end field

.field private final K:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "openEyeTreshold"
    .end annotation
.end field

.field private final L:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brand"
    .end annotation
.end field

.field private final M:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "model"
    .end annotation
.end field

.field private final N:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s5"
    .end annotation
.end field

.field private final O:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s6"
    .end annotation
.end field

.field private final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobileToken"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "personId"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "personName"
    .end annotation
.end field

.field private final d:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "useAnalytics"
    .end annotation
.end field

.field private final e:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requestTimeout"
    .end annotation
.end field

.field private final f:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s3"
    .end annotation
.end field

.field private final g:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "layoutId"
    .end annotation
.end field

.field private final h:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "greenMask"
    .end annotation
.end field

.field private final i:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s1"
    .end annotation
.end field

.field private final j:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "whiteMask"
    .end annotation
.end field

.field private final k:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "redMask"
    .end annotation
.end field

.field private final l:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "styleId"
    .end annotation
.end field

.field private final m:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showButtonTime"
    .end annotation
.end field

.field private final n:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableSound"
    .end annotation
.end field

.field private final o:Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sensorStabilitySettings"
    .end annotation
.end field

.field private final p:Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sensorOrientationSettings"
    .end annotation
.end field

.field private final q:Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sensorLuminositySettings"
    .end annotation
.end field

.field private final r:Lcom/combateafraude/passivefaceliveness/input/ProxySettings;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "proxySettings"
    .end annotation
.end field

.field private final s:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s4"
    .end annotation
.end field

.field private final t:Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "captureSettings"
    .end annotation
.end field

.field private final u:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showDelay"
    .end annotation
.end field

.field private final v:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "switchCameraButton"
    .end annotation
.end field

.field private final w:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delay"
    .end annotation
.end field

.field private final x:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s7"
    .end annotation
.end field

.field private final y:Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messageSettings"
    .end annotation
.end field

.field private final z:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "getUrlExpireTime"
    .end annotation
.end field


# direct methods
.method private static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x3e3da67cb6L

    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->PARAMETER_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->L:Ljava/lang/String;

    .line 4
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->M:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->n(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->a:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->o(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->b:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->z(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->c:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->K(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->d:Z

    .line 9
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->h(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I

    move-result v1

    iput v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->e:I

    .line 10
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->i(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I

    move-result v1

    iput v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->g:I

    .line 11
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->j(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I

    move-result v1

    iput v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->h:I

    .line 12
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->k(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I

    move-result v1

    iput v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->j:I

    .line 13
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->l(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I

    move-result v1

    iput v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->k:I

    .line 14
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->m(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I

    move-result v1

    iput v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->l:I

    .line 15
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->p(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I

    move-result v1

    iput v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->m:I

    .line 16
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->q(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->n:Z

    .line 17
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->r(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->o:Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;

    .line 18
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->s(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->q:Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;

    .line 19
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->t(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->p:Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;

    .line 20
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->u(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/ProxySettings;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->r:Lcom/combateafraude/passivefaceliveness/input/ProxySettings;

    .line 21
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->v(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->t:Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    .line 22
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->w(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->u:Z

    .line 23
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->x(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I

    move-result v1

    iput v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->w:I

    .line 24
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->y(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->v:Z

    .line 25
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->A(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->y:Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    .line 26
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->B(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->z:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->C(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->A:Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;

    .line 28
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->D(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->C:Z

    .line 29
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->E(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i:Z

    .line 30
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->F(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->H:Z

    .line 31
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->G(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/MaskType;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->B:Lcom/combateafraude/passivefaceliveness/input/MaskType;

    .line 32
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->H(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/CafStage;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->D:Lcom/combateafraude/passivefaceliveness/input/CafStage;

    .line 33
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->I(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/Resolution;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->E:Lcom/combateafraude/passivefaceliveness/input/Resolution;

    .line 34
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->J(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I

    move-result v1

    iput v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->F:I

    .line 35
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->L(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->G:Z

    .line 36
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->M(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->I:Z

    .line 37
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->a(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->f:Z

    .line 38
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->b(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I

    move-result v1

    iput v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->s:I

    .line 39
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->c(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->N:Z

    .line 40
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->d(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->J:Z

    .line 41
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->e(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->K:D

    .line 42
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->f(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->O:Z

    .line 43
    invoke-static {p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->g(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->x:Z

    .line 44
    invoke-virtual {p0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->w()Lcaf/io/e0;

    move-result-object p1

    sput-object p1, Lcaf/io/Z;->b:Lcaf/io/e0;

    if-eqz v0, :cond_0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-wide v0, -0x183da67cb6L

    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;-><init>(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->N:Z

    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->n:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->t:Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    instance-of v0, v0, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;

    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->v:Z

    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->x:Z

    return v0
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->d:Z

    return v0
.end method

.method public G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->f:Z

    return v0
.end method

.method public H()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->O:Z

    return v0
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i:Z

    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->C:Z

    return v0
.end method

.method public K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->H:Z

    return v0
.end method

.method public L()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->t:Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    instance-of v0, v0, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;

    return v0
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->u:Z

    return v0
.end method

.method public N()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->C:Z

    return v0
.end method

.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->s:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->F:I

    return v0
.end method

.method public c()Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->t:Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->w:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->z:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->h:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->g:I

    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->B:Lcom/combateafraude/passivefaceliveness/input/MaskType;

    sget-object v1, Lcom/combateafraude/passivefaceliveness/input/MaskType;->NONE:Lcom/combateafraude/passivefaceliveness/input/MaskType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->y:Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x363da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->K:D

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->b:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n()Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->A:Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;

    return-object v0
.end method

.method public o()Lcom/combateafraude/passivefaceliveness/input/ProxySettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->r:Lcom/combateafraude/passivefaceliveness/input/ProxySettings;

    return-object v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->k:I

    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->e:I

    return v0
.end method

.method public r()Lcom/combateafraude/passivefaceliveness/input/Resolution;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->E:Lcom/combateafraude/passivefaceliveness/input/Resolution;

    return-object v0
.end method

.method public s()Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->q:Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;

    return-object v0
.end method

.method public t()Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->p:Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;

    return-object v0
.end method

.method public u()Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->o:Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;

    return-object v0
.end method

.method public v()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->m:I

    return v0
.end method

.method public w()Lcaf/io/e0;
    .locals 2

    .line 1
    sget-object v0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$a;->a:[I

    iget-object v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->D:Lcom/combateafraude/passivefaceliveness/input/CafStage;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lcaf/io/e0;->a:Lcaf/io/e0;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcaf/io/e0;->b:Lcaf/io/e0;

    return-object v0

    .line 4
    :cond_1
    sget-object v0, Lcaf/io/e0;->c:Lcaf/io/e0;

    return-object v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->l:I

    return v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->j:I

    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->G:Z

    return v0
.end method
