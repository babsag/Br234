.class public Lcom/combateafraude/documentdetector/input/DocumentDetector;
.super Ljava/lang/Object;
.source "DocumentDetector.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    }
.end annotation


# static fields
.field public static final PARAMETER_NAME:Ljava/lang/String; = "DocumentDetector"


# instance fields
.field private A:Lcom/combateafraude/documentdetector/input/PreviewSettings;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "previewSettings"
    .end annotation
.end field

.field private B:Lcom/combateafraude/documentdetector/input/UploadSettings;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uploadSettings"
    .end annotation
.end field

.field private C:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "useGoogleServicesVersion"
    .end annotation
.end field

.field private D:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s1"
    .end annotation
.end field

.field private E:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s2"
    .end annotation
.end field

.field private F:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maskVisibility"
    .end annotation
.end field

.field private G:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brand"
    .end annotation
.end field

.field private H:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "model"
    .end annotation
.end field

.field private I:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s3"
    .end annotation
.end field

.field private J:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s4"
    .end annotation
.end field

.field private K:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s5"
    .end annotation
.end field

.field private L:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s6"
    .end annotation
.end field

.field private M:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "s7"
    .end annotation
.end field

.field private N:[Lcom/combateafraude/documentdetector/input/CountryCodesList;

.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobileToken"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "personId"
    .end annotation
.end field

.field private c:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "useAnalytics"
    .end annotation
.end field

.field private d:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requestTimeout"
    .end annotation
.end field

.field private e:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "layoutId"
    .end annotation
.end field

.field private f:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "greenMask"
    .end annotation
.end field

.field private g:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "whiteMask"
    .end annotation
.end field

.field private h:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "redMask"
    .end annotation
.end field

.field private i:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "styleId"
    .end annotation
.end field

.field private j:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableSound"
    .end annotation
.end field

.field private k:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "documentSteps"
    .end annotation
.end field

.field private l:[Lcom/combateafraude/documentdetector/input/CaptureStage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "captureStages"
    .end annotation
.end field

.field private m:Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sensorLuminositySettings"
    .end annotation
.end field

.field private n:Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sensorOrientationSettings"
    .end annotation
.end field

.field private o:Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sensorStabilitySettings"
    .end annotation
.end field

.field private p:Lcom/combateafraude/documentdetector/input/ProxySettings;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "proxySettings"
    .end annotation
.end field

.field private q:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showPopup"
    .end annotation
.end field

.field private r:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "switchCameraButton"
    .end annotation
.end field

.field private s:Lcom/combateafraude/documentdetector/input/MaskType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mask"
    .end annotation
.end field

.field private t:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "compressQuality"
    .end annotation
.end field

.field private u:Lcom/combateafraude/documentdetector/input/Resolution;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resolution"
    .end annotation
.end field

.field private v:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showDelay"
    .end annotation
.end field

.field private w:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delay"
    .end annotation
.end field

.field private x:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "autoDetection"
    .end annotation
.end field

.field private y:Lcom/combateafraude/documentdetector/input/MessageSettings;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messageSettings"
    .end annotation
.end field

.field private z:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "getUrlExpireTime"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->G:Ljava/lang/String;

    .line 4
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->H:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->m(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->a:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->n(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->b:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->y(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->c:Z

    .line 8
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->J(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)I

    move-result v0

    iput v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->d:I

    .line 9
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->g(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)I

    move-result v0

    iput v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->e:I

    .line 10
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->h(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)I

    move-result v0

    iput v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->f:I

    .line 11
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->i(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)I

    move-result v0

    iput v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->g:I

    .line 12
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->j(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)I

    move-result v0

    iput v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->h:I

    .line 13
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->k(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)I

    move-result v0

    iput v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->i:I

    .line 14
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->l(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->j:Z

    .line 15
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->o(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->k:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    .line 16
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->p(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)[Lcom/combateafraude/documentdetector/input/CaptureStage;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->l:[Lcom/combateafraude/documentdetector/input/CaptureStage;

    .line 17
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->q(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->m:Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;

    .line 18
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->r(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->n:Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;

    .line 19
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->s(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->o:Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;

    .line 20
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->t(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Lcom/combateafraude/documentdetector/input/ProxySettings;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->p:Lcom/combateafraude/documentdetector/input/ProxySettings;

    .line 21
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->u(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->q:Z

    .line 22
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->v(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Lcom/combateafraude/documentdetector/input/MaskType;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->s:Lcom/combateafraude/documentdetector/input/MaskType;

    .line 23
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->w(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->r:Z

    .line 24
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->x(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->x:Z

    .line 25
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->z(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->v:Z

    .line 26
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->A(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)I

    move-result v0

    iput v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->w:I

    .line 27
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->B(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->y:Lcom/combateafraude/documentdetector/input/MessageSettings;

    .line 28
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->C(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->z:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->D(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)I

    move-result v0

    iput v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->t:I

    .line 30
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->E(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Lcom/combateafraude/documentdetector/input/Resolution;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->u:Lcom/combateafraude/documentdetector/input/Resolution;

    .line 31
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->F(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Lcom/combateafraude/documentdetector/input/PreviewSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->A:Lcom/combateafraude/documentdetector/input/PreviewSettings;

    .line 32
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->G(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->C:Z

    .line 33
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->H(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->D:Z

    .line 34
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->I(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->E:Z

    .line 35
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->K(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->F:Z

    .line 36
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->L(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->B:Lcom/combateafraude/documentdetector/input/UploadSettings;

    .line 37
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->a(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->I:Z

    .line 38
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->b(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->J:I

    .line 39
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->c(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z

    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->K:Z

    .line 40
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->d(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->L:Z

    .line 41
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->e(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->M:Z

    .line 42
    invoke-static {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->f(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)[Lcom/combateafraude/documentdetector/input/CountryCodesList;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->N:[Lcom/combateafraude/documentdetector/input/CountryCodesList;

    .line 43
    iget-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 44
    iget-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->k:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    if-eqz p1, :cond_1

    .line 45
    iget-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->l:[Lcom/combateafraude/documentdetector/input/CaptureStage;

    if-eqz p1, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "captureStages can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing .setDocumentSteps() parameter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing mobileToken parameter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;Lcom/combateafraude/documentdetector/input/DocumentDetector$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;-><init>(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)V

    return-void
.end method


# virtual methods
.method public getAllowedPassportCountriesList()[Lcom/combateafraude/documentdetector/input/CountryCodesList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->N:[Lcom/combateafraude/documentdetector/input/CountryCodesList;

    return-object v0
.end method

.method public getAppSignature()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->J:I

    return v0
.end method

.method public getCaptureStages()[Lcom/combateafraude/documentdetector/input/CaptureStage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->l:[Lcom/combateafraude/documentdetector/input/CaptureStage;

    return-object v0
.end method

.method public getCompressQuality()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->t:I

    return v0
.end method

.method public getDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->w:I

    return v0
.end method

.method public getDocumentSteps()[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->k:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    return-object v0
.end method

.method public getGetUrlExpireTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getGreenMask()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->f:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->e:I

    return v0
.end method

.method public getMask()Lcom/combateafraude/documentdetector/input/MaskType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->s:Lcom/combateafraude/documentdetector/input/MaskType;

    return-object v0
.end method

.method public getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->y:Lcom/combateafraude/documentdetector/input/MessageSettings;

    return-object v0
.end method

.method public getMobileToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewSettings()Lcom/combateafraude/documentdetector/input/PreviewSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->A:Lcom/combateafraude/documentdetector/input/PreviewSettings;

    return-object v0
.end method

.method public getProxySettings()Lcom/combateafraude/documentdetector/input/ProxySettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->p:Lcom/combateafraude/documentdetector/input/ProxySettings;

    return-object v0
.end method

.method public getRedMask()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->h:I

    return v0
.end method

.method public getRequestTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->d:I

    return v0
.end method

.method public getResolution()Lcom/combateafraude/documentdetector/input/Resolution;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->u:Lcom/combateafraude/documentdetector/input/Resolution;

    return-object v0
.end method

.method public getSensorLuminositySettings()Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->m:Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;

    return-object v0
.end method

.method public getSensorOrientationSettings()Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->n:Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;

    return-object v0
.end method

.method public getSensorStabilitySettings()Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->o:Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;

    return-object v0
.end method

.method public getStyleId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->i:I

    return v0
.end method

.method public getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->B:Lcom/combateafraude/documentdetector/input/UploadSettings;

    return-object v0
.end method

.method public getWhiteMask()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->g:I

    return v0
.end method

.method public isAutoDetection()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->x:Z

    return v0
.end method

.method public isCheckAppSignature()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->K:Z

    return v0
.end method

.method public isEnableSound()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->j:Z

    return v0
.end method

.method public isMaskVisibility()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->F:Z

    return v0
.end method

.method public isShowDelay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->v:Z

    return v0
.end method

.method public isShowPopup()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->q:Z

    return v0
.end method

.method public isSwitchCameraButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->r:Z

    return v0
.end method

.method public isUseAdb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->M:Z

    return v0
.end method

.method public isUseAnalytics()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->c:Z

    return v0
.end method

.method public isUseDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->I:Z

    return v0
.end method

.method public isUseDeveloperMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->L:Z

    return v0
.end method

.method public isUseEmulator()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->D:Z

    return v0
.end method

.method public isUseGoogleServicesVersion()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->C:Z

    return v0
.end method

.method public isUseRoot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->E:Z

    return v0
.end method

.method public setCaptureStages([Lcom/combateafraude/documentdetector/input/CaptureStage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector;->l:[Lcom/combateafraude/documentdetector/input/CaptureStage;

    return-void
.end method
