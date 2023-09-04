.class public Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
.super Ljava/lang/Object;
.source "DocumentDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/combateafraude/documentdetector/input/DocumentDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private A:Lcom/combateafraude/documentdetector/input/PreviewSettings;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Lcom/combateafraude/documentdetector/input/UploadSettings;

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:[Lcom/combateafraude/documentdetector/input/CountryCodesList;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

.field private l:[Lcom/combateafraude/documentdetector/input/CaptureStage;

.field private m:Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;

.field private n:Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;

.field private o:Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;

.field private p:Lcom/combateafraude/documentdetector/input/ProxySettings;

.field private q:Z

.field private r:Z

.field private s:Lcom/combateafraude/documentdetector/input/MaskType;

.field private t:I

.field private u:Lcom/combateafraude/documentdetector/input/Resolution;

.field private v:Z

.field private w:Z

.field private x:I

.field private y:Lcom/combateafraude/documentdetector/input/MessageSettings;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->k:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->q:Z

    .line 4
    iput-boolean v1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->r:Z

    .line 5
    new-instance v2, Lcom/combateafraude/documentdetector/input/MessageSettings;

    invoke-direct {v2}, Lcom/combateafraude/documentdetector/input/MessageSettings;-><init>()V

    iput-object v2, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->y:Lcom/combateafraude/documentdetector/input/MessageSettings;

    .line 6
    new-instance v2, Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;-><init>(I)V

    iput-object v2, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->m:Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;

    .line 7
    new-instance v2, Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-direct {v2, v4, v5}, Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;-><init>(D)V

    iput-object v2, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->n:Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;

    .line 8
    new-instance v2, Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;

    const-wide/16 v4, 0x7d0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;-><init>(JD)V

    iput-object v2, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->o:Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;

    .line 9
    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->p:Lcom/combateafraude/documentdetector/input/ProxySettings;

    .line 10
    new-instance v2, Lcom/combateafraude/documentdetector/input/QualitySettings;

    const-wide v4, 0x3ffccccccccccccdL    # 1.8

    invoke-direct {v2, v4, v5}, Lcom/combateafraude/documentdetector/input/QualitySettings;-><init>(D)V

    .line 11
    new-instance v4, Lcom/combateafraude/documentdetector/input/DetectionSettings;

    const-wide v5, 0x3fed1eb851eb851fL    # 0.91

    invoke-direct {v4, v5, v6, v3}, Lcom/combateafraude/documentdetector/input/DetectionSettings;-><init>(DI)V

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/combateafraude/documentdetector/input/CaptureStage;

    .line 12
    new-instance v5, Lcom/combateafraude/documentdetector/input/CaptureStage;

    const-wide/16 v6, 0x4e20

    .line 13
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v6, Lcom/combateafraude/documentdetector/input/CaptureMode;->AUTOMATIC:Lcom/combateafraude/documentdetector/input/CaptureMode;

    const/4 v10, 0x1

    move-object v8, v5

    move-object v11, v2

    move-object v12, v4

    move-object v13, v6

    invoke-direct/range {v8 .. v13}, Lcom/combateafraude/documentdetector/input/CaptureStage;-><init>(Ljava/lang/Long;ZLcom/combateafraude/documentdetector/input/QualitySettings;Lcom/combateafraude/documentdetector/input/DetectionSettings;Lcom/combateafraude/documentdetector/input/CaptureMode;)V

    const/4 v7, 0x0

    aput-object v5, v3, v7

    new-instance v5, Lcom/combateafraude/documentdetector/input/CaptureStage;

    const-wide/16 v8, 0x3a98

    .line 14
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Lcom/combateafraude/documentdetector/input/CaptureStage;-><init>(Ljava/lang/Long;ZLcom/combateafraude/documentdetector/input/QualitySettings;Lcom/combateafraude/documentdetector/input/DetectionSettings;Lcom/combateafraude/documentdetector/input/CaptureMode;)V

    aput-object v5, v3, v1

    new-instance v5, Lcom/combateafraude/documentdetector/input/CaptureStage;

    const-wide/16 v8, 0x2710

    .line 15
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v6, Lcom/combateafraude/documentdetector/input/CaptureMode;->MANUAL:Lcom/combateafraude/documentdetector/input/CaptureMode;

    move-object v8, v5

    move-object v13, v6

    invoke-direct/range {v8 .. v13}, Lcom/combateafraude/documentdetector/input/CaptureStage;-><init>(Ljava/lang/Long;ZLcom/combateafraude/documentdetector/input/QualitySettings;Lcom/combateafraude/documentdetector/input/DetectionSettings;Lcom/combateafraude/documentdetector/input/CaptureMode;)V

    const/4 v4, 0x2

    aput-object v5, v3, v4

    new-instance v4, Lcom/combateafraude/documentdetector/input/CaptureStage;

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lcom/combateafraude/documentdetector/input/CaptureStage;-><init>(Ljava/lang/Long;ZLcom/combateafraude/documentdetector/input/QualitySettings;Lcom/combateafraude/documentdetector/input/DetectionSettings;Lcom/combateafraude/documentdetector/input/CaptureMode;)V

    const/4 v2, 0x3

    aput-object v4, v3, v2

    iput-object v3, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->l:[Lcom/combateafraude/documentdetector/input/CaptureStage;

    .line 16
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->a:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->b:Ljava/lang/String;

    .line 18
    iput-boolean v1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->c:Z

    const/16 p1, 0x3c

    .line 19
    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->d:I

    .line 20
    sget p1, Lcom/combateafraude/documentdetector/R$style;->defaultStyle:I

    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->i:I

    .line 21
    iput-boolean v1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->j:Z

    .line 22
    sget p1, Lcom/combateafraude/documentdetector/R$layout;->activity_document_detector:I

    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->e:I

    .line 23
    sget p1, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_document_green:I

    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->f:I

    .line 24
    sget p1, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_document_white:I

    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->g:I

    .line 25
    sget p1, Lcom/combateafraude/documentdetector/R$drawable;->ic_mask_document_red:I

    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->h:I

    .line 26
    sget-object p1, Lcom/combateafraude/documentdetector/input/MaskType;->DEFAULT:Lcom/combateafraude/documentdetector/input/MaskType;

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->s:Lcom/combateafraude/documentdetector/input/MaskType;

    .line 27
    new-instance p1, Lcom/combateafraude/documentdetector/input/PreviewSettings;

    invoke-direct {p1, v7}, Lcom/combateafraude/documentdetector/input/PreviewSettings;-><init>(Z)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->A:Lcom/combateafraude/documentdetector/input/PreviewSettings;

    .line 28
    iput-boolean v1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->v:Z

    .line 29
    iput-boolean v7, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->w:Z

    const/16 p1, 0x7d0

    .line 30
    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->x:I

    const/16 p1, 0x64

    .line 31
    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->t:I

    .line 32
    sget-object p1, Lcom/combateafraude/documentdetector/input/Resolution;->ULTRA_HD:Lcom/combateafraude/documentdetector/input/Resolution;

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->u:Lcom/combateafraude/documentdetector/input/Resolution;

    .line 33
    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->z:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->B:Z

    .line 35
    iput-boolean v7, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->C:Z

    .line 36
    iput-boolean v7, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->D:Z

    .line 37
    iput-boolean v1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->E:Z

    .line 38
    new-instance p1, Lcom/combateafraude/documentdetector/input/UploadSettings;

    invoke-direct {p1, v7}, Lcom/combateafraude/documentdetector/input/UploadSettings;-><init>(Z)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->F:Lcom/combateafraude/documentdetector/input/UploadSettings;

    .line 39
    iput-boolean v7, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->G:Z

    .line 40
    iput-boolean v1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->H:Z

    .line 41
    iput-boolean v1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->I:Z

    .line 42
    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->J:[Lcom/combateafraude/documentdetector/input/CountryCodesList;

    return-void
.end method

.method static synthetic A(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->x:I

    return p0
.end method

.method static synthetic B(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Lcom/combateafraude/documentdetector/input/MessageSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->y:Lcom/combateafraude/documentdetector/input/MessageSettings;

    return-object p0
.end method

.method static synthetic C(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->z:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic D(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->t:I

    return p0
.end method

.method static synthetic E(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Lcom/combateafraude/documentdetector/input/Resolution;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->u:Lcom/combateafraude/documentdetector/input/Resolution;

    return-object p0
.end method

.method static synthetic F(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Lcom/combateafraude/documentdetector/input/PreviewSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->A:Lcom/combateafraude/documentdetector/input/PreviewSettings;

    return-object p0
.end method

.method static synthetic G(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->B:Z

    return p0
.end method

.method static synthetic H(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->C:Z

    return p0
.end method

.method static synthetic I(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->D:Z

    return p0
.end method

.method static synthetic J(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->d:I

    return p0
.end method

.method static synthetic K(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->E:Z

    return p0
.end method

.method static synthetic L(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Lcom/combateafraude/documentdetector/input/UploadSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->F:Lcom/combateafraude/documentdetector/input/UploadSettings;

    return-object p0
.end method

.method static synthetic a(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->G:Z

    return p0
.end method

.method static synthetic b(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic d(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->H:Z

    return p0
.end method

.method static synthetic e(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->I:Z

    return p0
.end method

.method static synthetic f(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)[Lcom/combateafraude/documentdetector/input/CountryCodesList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->J:[Lcom/combateafraude/documentdetector/input/CountryCodesList;

    return-object p0
.end method

.method static synthetic g(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->e:I

    return p0
.end method

.method static synthetic h(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->f:I

    return p0
.end method

.method static synthetic i(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->g:I

    return p0
.end method

.method static synthetic j(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->h:I

    return p0
.end method

.method static synthetic k(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->i:I

    return p0
.end method

.method static synthetic l(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->j:Z

    return p0
.end method

.method static synthetic m(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->k:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    return-object p0
.end method

.method static synthetic p(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)[Lcom/combateafraude/documentdetector/input/CaptureStage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->l:[Lcom/combateafraude/documentdetector/input/CaptureStage;

    return-object p0
.end method

.method static synthetic q(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->m:Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;

    return-object p0
.end method

.method static synthetic r(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->n:Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;

    return-object p0
.end method

.method static synthetic s(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->o:Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;

    return-object p0
.end method

.method static synthetic t(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Lcom/combateafraude/documentdetector/input/ProxySettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->p:Lcom/combateafraude/documentdetector/input/ProxySettings;

    return-object p0
.end method

.method static synthetic u(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->q:Z

    return p0
.end method

.method static synthetic v(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Lcom/combateafraude/documentdetector/input/MaskType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->s:Lcom/combateafraude/documentdetector/input/MaskType;

    return-object p0
.end method

.method static synthetic w(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->r:Z

    return p0
.end method

.method static synthetic x(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->v:Z

    return p0
.end method

.method static synthetic y(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->c:Z

    return p0
.end method

.method static synthetic z(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->w:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/combateafraude/documentdetector/input/DocumentDetector;
    .locals 2

    .line 1
    new-instance v0, Lcom/combateafraude/documentdetector/input/DocumentDetector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;-><init>(Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;Lcom/combateafraude/documentdetector/input/DocumentDetector$a;)V

    return-object v0
.end method

.method public enableGoogleServices(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->B:Z

    return-object p0
.end method

.method public enableSwitchCameraButton(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->r:Z

    return-object p0
.end method

.method public setAllowedPassportCountriesList([Lcom/combateafraude/documentdetector/input/CountryCodesList;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->J:[Lcom/combateafraude/documentdetector/input/CountryCodesList;

    return-object p0
.end method

.method public setAnalyticsSettings(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->c:Z

    return-object p0
.end method

.method public setAudioSettings(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->j:Z

    return-object p0
.end method

.method public setAutoDetection(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->v:Z

    return-object p0
.end method

.method public setCaptureStages([Lcom/combateafraude/documentdetector/input/CaptureStage;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0
    .param p1    # [Lcom/combateafraude/documentdetector/input/CaptureStage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->l:[Lcom/combateafraude/documentdetector/input/CaptureStage;

    return-object p0
.end method

.method public setCompressSettings(I)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x32L
            to = 0x64L
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->t:I

    return-object p0
.end method

.method public setCurrentStepDoneDelay(ZI)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->w:Z

    .line 2
    iput p2, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->x:I

    return-object p0
.end method

.method public setDocumentSteps([Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0
    .param p1    # [Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->k:[Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;

    return-object p0
.end method

.method public setGetImageUrlExpireTime(Ljava/lang/String;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->z:Ljava/lang/String;

    return-object p0
.end method

.method public setLayout(Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->e:I

    :cond_0
    return-object p0
.end method

.method public setLuminositySensorSettings(Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0
    .param p1    # Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->m:Lcom/combateafraude/documentdetector/input/SensorLuminositySettings;

    return-object p0
.end method

.method public setMask(Lcom/combateafraude/documentdetector/input/MaskType;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->s:Lcom/combateafraude/documentdetector/input/MaskType;

    return-object p0
.end method

.method public setMask(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
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

    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->f:I

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->g:I

    :cond_1
    if-eqz p3, :cond_2

    .line 3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->h:I

    :cond_2
    return-object p0
.end method

.method public setMaskVisibility(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->E:Z

    return-object p0
.end method

.method public setMessageSettings(Lcom/combateafraude/documentdetector/input/MessageSettings;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->y:Lcom/combateafraude/documentdetector/input/MessageSettings;

    :cond_0
    return-object p0
.end method

.method public setNetworkSettings(I)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->d:I

    return-object p0
.end method

.method public setOrientationSensorSettings(Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0
    .param p1    # Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->n:Lcom/combateafraude/documentdetector/input/SensorOrientationSettings;

    return-object p0
.end method

.method public setPersonId(Ljava/lang/String;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setPopupSettings(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->q:Z

    return-object p0
.end method

.method public setPreviewSettings(Lcom/combateafraude/documentdetector/input/PreviewSettings;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0
    .param p1    # Lcom/combateafraude/documentdetector/input/PreviewSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->A:Lcom/combateafraude/documentdetector/input/PreviewSettings;

    :cond_0
    return-object p0
.end method

.method public setProxySettings(Lcom/combateafraude/documentdetector/input/ProxySettings;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->p:Lcom/combateafraude/documentdetector/input/ProxySettings;

    return-object p0
.end method

.method public setResolutionSettings(Lcom/combateafraude/documentdetector/input/Resolution;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0
    .param p1    # Lcom/combateafraude/documentdetector/input/Resolution;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->u:Lcom/combateafraude/documentdetector/input/Resolution;

    return-object p0
.end method

.method public setStabilitySensorSettings(Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0
    .param p1    # Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->o:Lcom/combateafraude/documentdetector/input/SensorStabilitySettings;

    return-object p0
.end method

.method public setStyle(I)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->i:I

    return-object p0
.end method

.method public setUploadSettings(Lcom/combateafraude/documentdetector/input/UploadSettings;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->F:Lcom/combateafraude/documentdetector/input/UploadSettings;

    :cond_0
    return-object p0
.end method

.method public setUseAdb(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->I:Z

    return-object p0
.end method

.method public setUseDebug(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->G:Z

    return-object p0
.end method

.method public setUseDeveloperMode(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->H:Z

    return-object p0
.end method

.method public setUseEmulator(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->C:Z

    return-object p0
.end method

.method public setUseRoot(Z)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->D:Z

    return-object p0
.end method

.method public showPreview(ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;
    .locals 1
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/combateafraude/documentdetector/input/PreviewSettings;

    invoke-direct {v0, p1}, Lcom/combateafraude/documentdetector/input/PreviewSettings;-><init>(Z)V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {v0, p2}, Lcom/combateafraude/documentdetector/input/PreviewSettings;->setTitle(Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/PreviewSettings;

    :cond_0
    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {v0, p3}, Lcom/combateafraude/documentdetector/input/PreviewSettings;->setSubtitle(Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/PreviewSettings;

    :cond_1
    if-eqz p4, :cond_2

    .line 4
    invoke-virtual {v0, p4}, Lcom/combateafraude/documentdetector/input/PreviewSettings;->setConfirmLabel(Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/PreviewSettings;

    :cond_2
    if-eqz p5, :cond_3

    .line 5
    invoke-virtual {v0, p5}, Lcom/combateafraude/documentdetector/input/PreviewSettings;->setRetryLabel(Ljava/lang/Integer;)Lcom/combateafraude/documentdetector/input/PreviewSettings;

    .line 6
    :cond_3
    iput-object v0, p0, Lcom/combateafraude/documentdetector/input/DocumentDetector$Builder;->A:Lcom/combateafraude/documentdetector/input/PreviewSettings;

    return-object p0
.end method
