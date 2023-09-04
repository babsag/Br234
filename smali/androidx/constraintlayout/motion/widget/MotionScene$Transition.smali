.class public Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
.super Ljava/lang/Object;
.source "MotionScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;
    }
.end annotation


# static fields
.field public static final AUTO_ANIMATE_TO_END:I = 0x4

.field public static final AUTO_ANIMATE_TO_START:I = 0x3

.field public static final AUTO_JUMP_TO_END:I = 0x2

.field public static final AUTO_JUMP_TO_START:I = 0x1

.field public static final AUTO_NONE:I = 0x0

.field public static final INTERPOLATE_ANTICIPATE:I = 0x6

.field public static final INTERPOLATE_BOUNCE:I = 0x4

.field public static final INTERPOLATE_EASE_IN:I = 0x1

.field public static final INTERPOLATE_EASE_IN_OUT:I = 0x0

.field public static final INTERPOLATE_EASE_OUT:I = 0x2

.field public static final INTERPOLATE_LINEAR:I = 0x3

.field public static final INTERPOLATE_OVERSHOOT:I = 0x5

.field public static final INTERPOLATE_REFERENCE_ID:I = -0x2

.field public static final INTERPOLATE_SPLINE_STRING:I = -0x1


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:F

.field private final j:Landroidx/constraintlayout/motion/widget/MotionScene;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/KeyFrames;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroidx/constraintlayout/motion/widget/e;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Z

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(ILandroidx/constraintlayout/motion/widget/MotionScene;II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "motionScene",
            "constraintSetStartId",
            "constraintSetEndId"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->a:I

    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->b:Z

    .line 32
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    .line 33
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    .line 34
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    const/4 v2, 0x0

    .line 35
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->f:Ljava/lang/String;

    .line 36
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->g:I

    const/16 v3, 0x190

    .line 37
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    const/4 v3, 0x0

    .line 38
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->k:Ljava/util/ArrayList;

    .line 40
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/e;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    .line 42
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->n:I

    .line 43
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    .line 44
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->p:I

    .line 45
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    .line 46
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->r:I

    .line 47
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->a:I

    .line 48
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->j:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 49
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    .line 50
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    .line 51
    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->e(Landroidx/constraintlayout/motion/widget/MotionScene;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    .line 52
    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->a(Landroidx/constraintlayout/motion/widget/MotionScene;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionScene",
            "context",
            "parser"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->a:I

    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->b:Z

    .line 56
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    .line 57
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    .line 58
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    const/4 v2, 0x0

    .line 59
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->f:Ljava/lang/String;

    .line 60
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->g:I

    const/16 v3, 0x190

    .line 61
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    const/4 v3, 0x0

    .line 62
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    .line 63
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->k:Ljava/util/ArrayList;

    .line 64
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/e;

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    .line 66
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->n:I

    .line 67
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    .line 68
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->p:I

    .line 69
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    .line 70
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->r:I

    .line 71
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->e(Landroidx/constraintlayout/motion/widget/MotionScene;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    .line 72
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->a(Landroidx/constraintlayout/motion/widget/MotionScene;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    .line 73
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->j:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 74
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->u(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroidx/constraintlayout/motion/widget/MotionScene;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "motionScene",
            "global"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->a:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->b:Z

    .line 4
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    .line 5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    .line 6
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->f:Ljava/lang/String;

    .line 8
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->g:I

    const/16 v3, 0x190

    .line 9
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    const/4 v3, 0x0

    .line 10
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->k:Ljava/util/ArrayList;

    .line 12
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/e;

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    .line 14
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->n:I

    .line 15
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    .line 16
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->p:I

    .line 17
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    .line 18
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->r:I

    .line 19
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->j:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 20
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->e(Landroidx/constraintlayout/motion/widget/MotionScene;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    if-eqz p2, :cond_0

    .line 21
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->p:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->p:I

    .line 22
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    .line 23
    iget-object p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->f:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->f:Ljava/lang/String;

    .line 24
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->g:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->g:I

    .line 25
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    .line 26
    iget-object p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->k:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->k:Ljava/util/ArrayList;

    .line 27
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    .line 28
    iget p1, p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    :cond_0
    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    return p0
.end method

.method static synthetic b(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    return p1
.end method

.method static synthetic c(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    return p0
.end method

.method static synthetic d(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    return p1
.end method

.method static synthetic e(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->b:Z

    return p0
.end method

.method static synthetic f(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic g(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    return p0
.end method

.method static synthetic h(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->g:I

    return p0
.end method

.method static synthetic j(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    return p0
.end method

.method static synthetic k(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->p:I

    return p0
.end method

.method static synthetic l(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/e;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/e;

    return-object p0
.end method

.method static synthetic m(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    return p0
.end method

.method static synthetic n(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroidx/constraintlayout/motion/widget/e;)Landroidx/constraintlayout/motion/widget/e;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/e;

    return-object p1
.end method

.method static synthetic o(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->a:I

    return p0
.end method

.method static synthetic p(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic q(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    return p0
.end method

.method static synthetic r(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->n:I

    return p0
.end method

.method static synthetic s(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/MotionScene;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->j:Landroidx/constraintlayout/motion/widget/MotionScene;

    return-object p0
.end method

.method private t(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionScene",
            "context",
            "a"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ge v2, v0, :cond_10

    .line 2
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 3
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->Transition_constraintSetEnd:I

    const-string v7, "xml"

    const-string v8, "layout"

    if-ne v5, v6, :cond_1

    .line 4
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 8
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    invoke-virtual {v3, p2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 9
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(Landroidx/constraintlayout/motion/widget/MotionScene;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 10
    :cond_0
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 11
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    invoke-static {p1, p2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->c(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;I)I

    move-result v3

    .line 12
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    goto/16 :goto_1

    .line 13
    :cond_1
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->Transition_constraintSetStart:I

    if-ne v5, v6, :cond_3

    .line 14
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    .line 15
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 17
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 18
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    invoke-virtual {v3, p2, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 19
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->b(Landroidx/constraintlayout/motion/widget/MotionScene;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 20
    :cond_2
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 21
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    invoke-static {p1, p2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->c(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;I)I

    move-result v3

    .line 22
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    goto/16 :goto_1

    .line 23
    :cond_3
    sget v6, Landroidx/constraintlayout/widget/R$styleable;->Transition_motionInterpolator:I

    if-ne v5, v6, :cond_7

    .line 24
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 25
    iget v6, v6, Landroid/util/TypedValue;->type:I

    const/4 v7, -0x2

    if-ne v6, v3, :cond_4

    .line 26
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->g:I

    if-eq v3, v4, :cond_f

    .line 27
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    goto/16 :goto_1

    :cond_4
    const/4 v3, 0x3

    if-ne v6, v3, :cond_6

    .line 28
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->f:Ljava/lang/String;

    if-eqz v3, :cond_f

    const-string v6, "/"

    .line 29
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_5

    .line 30
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->g:I

    .line 31
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    goto/16 :goto_1

    .line 32
    :cond_5
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    goto/16 :goto_1

    .line 33
    :cond_6
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    goto/16 :goto_1

    .line 34
    :cond_7
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Transition_duration:I

    if-ne v5, v3, :cond_8

    .line 35
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    const/16 v4, 0x8

    if-ge v3, v4, :cond_f

    .line 36
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    goto :goto_1

    .line 37
    :cond_8
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Transition_staggered:I

    if-ne v5, v3, :cond_9

    .line 38
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    goto :goto_1

    .line 39
    :cond_9
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Transition_autoTransition:I

    if-ne v5, v3, :cond_a

    .line 40
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->n:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->n:I

    goto :goto_1

    .line 41
    :cond_a
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Transition_android_id:I

    if-ne v5, v3, :cond_b

    .line 42
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->a:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->a:I

    goto :goto_1

    .line 43
    :cond_b
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Transition_transitionDisable:I

    if-ne v5, v3, :cond_c

    .line 44
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    goto :goto_1

    .line 45
    :cond_c
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Transition_pathMotionArc:I

    if-ne v5, v3, :cond_d

    .line 46
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->p:I

    goto :goto_1

    .line 47
    :cond_d
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Transition_layoutDuringTransition:I

    if-ne v5, v3, :cond_e

    .line 48
    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    goto :goto_1

    .line 49
    :cond_e
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->Transition_transitionFlags:I

    if-ne v5, v3, :cond_f

    .line 50
    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->r:I

    :cond_f
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 51
    :cond_10
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    if-ne p1, v4, :cond_11

    .line 52
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->b:Z

    :cond_11
    return-void
.end method

.method private u(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionScene",
            "context",
            "attrs"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Transition:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->t(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 3
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addKeyFrame(Landroidx/constraintlayout/motion/widget/KeyFrames;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyFrames"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnClick(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "action"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    .line 2
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->b:I

    if-ne v2, p1, :cond_0

    .line 3
    iput p2, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->c:I

    return-void

    .line 4
    :cond_1
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    invoke-direct {v0, p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;-><init>(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;II)V

    .line 5
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnClick(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    invoke-direct {v1, p1, p0, p2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public debugString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "null"

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    if-ne v2, v1, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public getAutoTransition()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->n:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    return v0
.end method

.method public getEndConstraintSetId()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->c:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->a:I

    return v0
.end method

.method public getKeyFrameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/constraintlayout/motion/widget/KeyFrames;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLayoutDuringTransition()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    return v0
.end method

.method public getOnClickList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPathMotionArc()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->p:I

    return v0
.end method

.method public getStagger()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    return v0
.end method

.method public getStartConstraintSetId()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->d:I

    return v0
.end method

.method public getTouchResponse()Landroidx/constraintlayout/motion/widget/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/e;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTransitionFlag(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->r:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeOnClick(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    .line 2
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->b:I

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public setAutoTransition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->n:I

    return-void
.end method

.method public setDuration(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->h:I

    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnabled(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->o:Z

    return-void
.end method

.method public setInterpolatorInfo(ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "interpolator",
            "interpolatorString",
            "interpolatorID"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->e:I

    .line 2
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->f:Ljava/lang/String;

    .line 3
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->g:I

    return-void
.end method

.method public setLayoutDuringTransition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->q:I

    return-void
.end method

.method public setOnSwipe(Landroidx/constraintlayout/motion/widget/OnSwipe;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onSwipe"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Landroidx/constraintlayout/motion/widget/e;

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->j:Landroidx/constraintlayout/motion/widget/MotionScene;

    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->d(Landroidx/constraintlayout/motion/widget/MotionScene;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/motion/widget/e;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/motion/widget/OnSwipe;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->l:Landroidx/constraintlayout/motion/widget/e;

    return-void
.end method

.method public setOnTouchUp(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchUpMode"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/e;->y(I)V

    :cond_0
    return-void
.end method

.method public setPathMotionArc(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arcMode"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->p:I

    return-void
.end method

.method public setStagger(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stagger"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->i:F

    return-void
.end method

.method public setTransitionFlag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->r:I

    return-void
.end method
