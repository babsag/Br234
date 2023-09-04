.class public Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
.super Ljava/lang/Object;
.source "PassiveFaceLiveness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private A:Lcom/combateafraude/passivefaceliveness/input/MaskType;

.field private B:Lcom/combateafraude/passivefaceliveness/input/CafStage;

.field private C:Lcom/combateafraude/passivefaceliveness/input/Resolution;

.field private D:I

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:I

.field private I:Z

.field private J:Z

.field private K:D

.field private L:Z

.field private M:Z

.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;

.field private n:Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;

.field private o:Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;

.field private p:Lcom/combateafraude/passivefaceliveness/input/ProxySettings;

.field private q:Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

.field private v:Ljava/lang/String;

.field private w:Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->a:Ljava/lang/String;

    .line 3
    new-instance p1, Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;

    const-wide/16 v0, 0x5dc

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;-><init>(JD)V

    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->m:Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;

    .line 4
    new-instance p1, Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    invoke-direct {p1, v0, v1}, Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;-><init>(D)V

    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->o:Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;

    .line 5
    new-instance p1, Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;-><init>(I)V

    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->n:Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;

    .line 6
    new-instance p1, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    invoke-direct {p1}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->u:Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    .line 7
    new-instance p1, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;

    invoke-direct {p1}, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->q:Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->p:Lcom/combateafraude/passivefaceliveness/input/ProxySettings;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->s:Z

    .line 10
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->b:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->c:Ljava/lang/String;

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->d:Z

    const/16 v2, 0x3c

    .line 13
    iput v2, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->e:I

    .line 14
    sget v2, Lcom/combateafraude/passivefaceliveness/R$style;->defaultStyle:I

    iput v2, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->j:I

    .line 15
    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->l:Z

    .line 16
    sget v2, Lcom/combateafraude/passivefaceliveness/R$layout;->activity_passive_face_liveness:I

    iput v2, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->f:I

    .line 17
    sget v2, Lcom/combateafraude/passivefaceliveness/R$drawable;->ic_mask_face_green:I

    iput v2, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->g:I

    .line 18
    sget v2, Lcom/combateafraude/passivefaceliveness/R$drawable;->ic_mask_face_white:I

    iput v2, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->h:I

    .line 19
    sget v2, Lcom/combateafraude/passivefaceliveness/R$drawable;->ic_mask_face_red:I

    iput v2, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->i:I

    .line 20
    sget-object v2, Lcom/combateafraude/passivefaceliveness/input/MaskType;->DEFAULT:Lcom/combateafraude/passivefaceliveness/input/MaskType;

    iput-object v2, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->A:Lcom/combateafraude/passivefaceliveness/input/MaskType;

    const/16 v2, 0x3a98

    .line 21
    iput v2, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->k:I

    .line 22
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->v:Ljava/lang/String;

    .line 23
    new-instance p1, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;

    invoke-direct {p1, v0}, Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;-><init>(Z)V

    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->w:Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;

    .line 24
    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->x:Z

    .line 25
    iput-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->y:Z

    .line 26
    iput-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->z:Z

    .line 27
    sget-object p1, Lcom/combateafraude/passivefaceliveness/input/CafStage;->PROD:Lcom/combateafraude/passivefaceliveness/input/CafStage;

    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->B:Lcom/combateafraude/passivefaceliveness/input/CafStage;

    .line 28
    sget-object p1, Lcom/combateafraude/passivefaceliveness/input/Resolution;->HD:Lcom/combateafraude/passivefaceliveness/input/Resolution;

    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->C:Lcom/combateafraude/passivefaceliveness/input/Resolution;

    .line 29
    sget p1, Lcom/combateafraude/passivefaceliveness/R$raw;->faceliveness:I

    iput p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->D:I

    .line 30
    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->E:Z

    .line 31
    iput-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->F:Z

    .line 32
    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->G:Z

    .line 33
    iput v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->H:I

    .line 34
    iput-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->I:Z

    .line 35
    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->J:Z

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 36
    iput-wide v2, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->K:D

    .line 37
    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->L:Z

    .line 38
    iput-boolean v1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->M:Z

    return-void
.end method

.method static synthetic A(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/MessageSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->u:Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    return-object p0
.end method

.method static synthetic B(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->v:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic C(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->w:Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;

    return-object p0
.end method

.method static synthetic D(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->x:Z

    return p0
.end method

.method static synthetic E(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->y:Z

    return p0
.end method

.method static synthetic F(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->z:Z

    return p0
.end method

.method static synthetic G(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/MaskType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->A:Lcom/combateafraude/passivefaceliveness/input/MaskType;

    return-object p0
.end method

.method static synthetic H(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/CafStage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->B:Lcom/combateafraude/passivefaceliveness/input/CafStage;

    return-object p0
.end method

.method static synthetic I(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/Resolution;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->C:Lcom/combateafraude/passivefaceliveness/input/Resolution;

    return-object p0
.end method

.method static synthetic J(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->D:I

    return p0
.end method

.method static synthetic K(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->d:Z

    return p0
.end method

.method static synthetic L(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->E:Z

    return p0
.end method

.method static synthetic M(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->F:Z

    return p0
.end method

.method static synthetic a(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->G:Z

    return p0
.end method

.method static synthetic b(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->H:I

    return p0
.end method

.method static synthetic c(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->I:Z

    return p0
.end method

.method private checkAppSignature(I)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->H:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->I:Z

    return-object p0
.end method

.method static synthetic d(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->J:Z

    return p0
.end method

.method static synthetic e(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->K:D

    return-wide v0
.end method

.method static synthetic f(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->L:Z

    return p0
.end method

.method static synthetic g(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->M:Z

    return p0
.end method

.method static synthetic h(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->e:I

    return p0
.end method

.method static synthetic i(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->f:I

    return p0
.end method

.method static synthetic j(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->g:I

    return p0
.end method

.method static synthetic k(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->h:I

    return p0
.end method

.method static synthetic l(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->i:I

    return p0
.end method

.method static synthetic m(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->j:I

    return p0
.end method

.method static synthetic n(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->k:I

    return p0
.end method

.method static synthetic q(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->l:Z

    return p0
.end method

.method static synthetic r(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->m:Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;

    return-object p0
.end method

.method static synthetic s(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->n:Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;

    return-object p0
.end method

.method static synthetic t(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->o:Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;

    return-object p0
.end method

.method static synthetic u(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/ProxySettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->p:Lcom/combateafraude/passivefaceliveness/input/ProxySettings;

    return-object p0
.end method

.method static synthetic v(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->q:Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    return-object p0
.end method

.method static synthetic w(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->r:Z

    return p0
.end method

.method static synthetic x(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->t:I

    return p0
.end method

.method static synthetic y(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->s:Z

    return p0
.end method

.method static synthetic z(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    new-instance v0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;-><init>(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$a;)V

    return-object v0
.end method

.method public enableBrightnessIncrease(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->E:Z

    return-object p0
.end method

.method public enableGoogleServices(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->x:Z

    return-object p0
.end method

.method public enableSwitchCameraButton(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->s:Z

    return-object p0
.end method

.method public setAnalyticsSettings(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->d:Z

    return-object p0
.end method

.method public setAudioSettings(I)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->l:Z

    .line 3
    iput p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->D:I

    return-object p0
.end method

.method public setAudioSettings(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->l:Z

    return-object p0
.end method

.method public setCaptureSettings(Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 1
    .param p1    # Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->q:Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    .line 2
    instance-of v0, p1, Lcom/combateafraude/passivefaceliveness/input/VideoCapture;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->enableSwitchCameraButton(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-gt p1, v0, :cond_0

    .line 5
    sget-object p1, Lcom/combateafraude/passivefaceliveness/input/Resolution;->FULL_HD:Lcom/combateafraude/passivefaceliveness/input/Resolution;

    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->C:Lcom/combateafraude/passivefaceliveness/input/Resolution;

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/combateafraude/passivefaceliveness/input/Resolution;->qHD:Lcom/combateafraude/passivefaceliveness/input/Resolution;

    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->C:Lcom/combateafraude/passivefaceliveness/input/Resolution;

    :goto_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->F:Z

    goto :goto_1

    .line 8
    :cond_1
    instance-of p1, p1, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;

    if-eqz p1, :cond_2

    .line 9
    new-instance p1, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;

    invoke-direct {p1}, Lcom/combateafraude/passivefaceliveness/input/ImageCapture;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->q:Lcom/combateafraude/passivefaceliveness/input/CaptureSettings;

    .line 10
    sget-object p1, Lcom/combateafraude/passivefaceliveness/input/Resolution;->HD:Lcom/combateafraude/passivefaceliveness/input/Resolution;

    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->C:Lcom/combateafraude/passivefaceliveness/input/Resolution;

    :cond_2
    :goto_1
    return-object p0
.end method

.method public setCurrentStepDoneDelay(ZI)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->r:Z

    .line 2
    iput p2, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->t:I

    return-object p0
.end method

.method public setEyesClosedSettings(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 3
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->J:Z

    return-object p0
.end method

.method public setEyesClosedSettings(ZLjava/lang/Double;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .param p2    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.1
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->J:Z

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->K:D

    :cond_0
    return-object p0
.end method

.method public setGetImageUrlExpireTime(Ljava/lang/String;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->v:Ljava/lang/String;

    return-object p0
.end method

.method public setLayout(Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->f:I

    :cond_0
    return-object p0
.end method

.method public setLuminositySensorSettings(Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .param p1    # Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->n:Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;

    return-object p0
.end method

.method public setManualCaptureSettings(I)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->k:I

    return-object p0
.end method

.method public setMask(Lcom/combateafraude/passivefaceliveness/input/MaskType;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->A:Lcom/combateafraude/passivefaceliveness/input/MaskType;

    return-object p0
.end method

.method public setMask(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
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
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->g:I

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->h:I

    :cond_1
    if-eqz p3, :cond_2

    .line 3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->i:I

    :cond_2
    return-object p0
.end method

.method public setMessageSettings(Lcom/combateafraude/passivefaceliveness/input/MessageSettings;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->u:Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    :cond_0
    return-object p0
.end method

.method public setNetworkSettings(I)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->e:I

    return-object p0
.end method

.method public setOrientationSensorSettings(Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .param p1    # Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->o:Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;

    return-object p0
.end method

.method public setPersonCPF(Ljava/lang/String;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->setPersonId(Ljava/lang/String;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;

    return-object p0
.end method

.method public setPersonId(Ljava/lang/String;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setPersonName(Ljava/lang/String;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setPreviewSettings(Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .param p1    # Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->w:Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;

    :cond_0
    return-object p0
.end method

.method public setProxySettings(Lcom/combateafraude/passivefaceliveness/input/ProxySettings;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .param p1    # Lcom/combateafraude/passivefaceliveness/input/ProxySettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->p:Lcom/combateafraude/passivefaceliveness/input/ProxySettings;

    return-object p0
.end method

.method public setResolutionSettings(Lcom/combateafraude/passivefaceliveness/input/Resolution;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .param p1    # Lcom/combateafraude/passivefaceliveness/input/Resolution;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->C:Lcom/combateafraude/passivefaceliveness/input/Resolution;

    return-object p0
.end method

.method public setShowButtonTime(I)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->k:I

    return-object p0
.end method

.method public setStabilitySensorSettings(Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .param p1    # Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->m:Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;

    return-object p0
.end method

.method public setStage(Lcom/combateafraude/passivefaceliveness/input/CafStage;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->B:Lcom/combateafraude/passivefaceliveness/input/CafStage;

    :cond_0
    return-object p0
.end method

.method public setStyle(I)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->j:I

    return-object p0
.end method

.method public setUseAdb(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->M:Z

    return-object p0
.end method

.method public setUseDebug(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->G:Z

    return-object p0
.end method

.method public setUseDeveloperMode(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->L:Z

    return-object p0
.end method

.method public setUseEmulator(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->y:Z

    .line 2
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->M:Z

    return-object p0
.end method

.method public setUseRoot(Z)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness$Builder;->z:Z

    return-object p0
.end method
