.class Lio/flutter/view/AccessibilityBridge$h;
.super Ljava/lang/Object;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private A:F

.field private B:F

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:[F

.field private J:Lio/flutter/view/AccessibilityBridge$h;

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$h;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$h;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$f;",
            ">;"
        }
    .end annotation
.end field

.field private N:Lio/flutter/view/AccessibilityBridge$f;

.field private O:Lio/flutter/view/AccessibilityBridge$f;

.field private P:Z

.field private Q:[F

.field private R:Z

.field private S:[F

.field private T:Landroid/graphics/Rect;

.field final a:Lio/flutter/view/AccessibilityBridge;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lio/flutter/view/AccessibilityBridge$i;

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:F


# direct methods
.method constructor <init>(Lio/flutter/view/AccessibilityBridge;)V
    .locals 1
    .param p1    # Lio/flutter/view/AccessibilityBridge;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lio/flutter/view/AccessibilityBridge$h;->b:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$h;->u:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge$h;->K:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge$h;->L:Ljava/util/List;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$h;->P:Z

    .line 7
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$h;->R:Z

    .line 8
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$h;->a:Lio/flutter/view/AccessibilityBridge;

    return-void
.end method

.method static synthetic A(Lio/flutter/view/AccessibilityBridge$h;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/flutter/view/AccessibilityBridge$h;->u:Z

    return p0
.end method

.method static synthetic B(Lio/flutter/view/AccessibilityBridge$h;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/view/AccessibilityBridge$h;->R:Z

    return p1
.end method

.method static synthetic C(Lio/flutter/view/AccessibilityBridge$h;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/view/AccessibilityBridge$h;->P:Z

    return p1
.end method

.method static synthetic D(Lio/flutter/view/AccessibilityBridge$h;[FLjava/util/Set;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/view/AccessibilityBridge$h;->l0([FLjava/util/Set;Z)V

    return-void
.end method

.method static synthetic E(Lio/flutter/view/AccessibilityBridge$h;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$h;->T(Ljava/util/List;)V

    return-void
.end method

.method static synthetic F(Lio/flutter/view/AccessibilityBridge$h;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$h;->V()Z

    move-result p0

    return p0
.end method

.method static synthetic G(Lio/flutter/view/AccessibilityBridge$h;)F
    .locals 0

    .line 1
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$h;->l:F

    return p0
.end method

.method static synthetic H(Lio/flutter/view/AccessibilityBridge$h;)F
    .locals 0

    .line 1
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$h;->m:F

    return p0
.end method

.method static synthetic I(Lio/flutter/view/AccessibilityBridge$h;)F
    .locals 0

    .line 1
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$h;->n:F

    return p0
.end method

.method static synthetic J(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$h;->b0(Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p0

    return p0
.end method

.method static synthetic K(Lio/flutter/view/AccessibilityBridge$h;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$h;->k:I

    return p0
.end method

.method static synthetic L(Lio/flutter/view/AccessibilityBridge$h;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$h;->L:Ljava/util/List;

    return-object p0
.end method

.method static synthetic M(Lio/flutter/view/AccessibilityBridge$h;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$h;->U()Z

    move-result p0

    return p0
.end method

.method static synthetic N(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$h;->c0(Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result p0

    return p0
.end method

.method static synthetic O(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$h;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic P(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$h;->C:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Q(Lio/flutter/view/AccessibilityBridge$h;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$h;->x:I

    return p0
.end method

.method static synthetic R(Lio/flutter/view/AccessibilityBridge$h;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$h;->y:I

    return p0
.end method

.method static synthetic S(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$h;->Z()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private T(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/view/AccessibilityBridge$h;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->SCOPES_ROUTE:Lio/flutter/view/AccessibilityBridge$g;

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge$h;->e0(Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$h;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/AccessibilityBridge$h;

    .line 4
    invoke-direct {v1, p1}, Lio/flutter/view/AccessibilityBridge$h;->T(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private U()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$h;->o:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$h;->D:Ljava/lang/String;

    if-nez v2, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$h;->D:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private V()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$h;->l:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lio/flutter/view/AccessibilityBridge$h;->z:F

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lio/flutter/view/AccessibilityBridge$h;->z:F

    iget v1, p0, Lio/flutter/view/AccessibilityBridge$h;->l:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private W()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$h;->P:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$h;->P:Z

    .line 3
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->Q:[F

    if-nez v1, :cond_1

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 4
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->Q:[F

    .line 5
    :cond_1
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->Q:[F

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$h;->I:[F

    invoke-static {v1, v0, v2, v0}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$h;->Q:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    :cond_2
    return-void
.end method

.method private X(Lio/flutter/util/Predicate;)Lio/flutter/view/AccessibilityBridge$h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/util/Predicate<",
            "Lio/flutter/view/AccessibilityBridge$h;",
            ">;)",
            "Lio/flutter/view/AccessibilityBridge$h;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$h;->J:Lio/flutter/view/AccessibilityBridge$h;

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1, v0}, Lio/flutter/util/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, v0, Lio/flutter/view/AccessibilityBridge$h;->J:Lio/flutter/view/AccessibilityBridge$h;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private Y()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$h;->T:Landroid/graphics/Rect;

    return-object v0
.end method

.method private Z()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->NAMES_ROUTE:Lio/flutter/view/AccessibilityBridge$g;

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge$h;->e0(Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$h;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$h;->o:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$h;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/AccessibilityBridge$h;

    .line 5
    invoke-direct {v1}, Lio/flutter/view/AccessibilityBridge$h;->Z()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lio/flutter/view/AccessibilityBridge$h;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$h;->j:I

    return p0
.end method

.method private a0()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    .line 2
    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge$h;->p:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge$h;->o:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge$h;->s:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    :goto_0
    if-ge v4, v1, :cond_2

    .line 3
    aget-object v3, v2, v4

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method static synthetic b(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/util/Predicate;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/view/AccessibilityBridge$h;->j0(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/util/Predicate;)Z

    move-result p0

    return p0
.end method

.method private b0(Lio/flutter/view/AccessibilityBridge$Action;)Z
    .locals 1
    .param p1    # Lio/flutter/view/AccessibilityBridge$Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$h;->w:I

    iget p1, p1, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic c(Lio/flutter/view/AccessibilityBridge$h;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$h;->i:I

    return p0
.end method

.method private c0(Lio/flutter/view/AccessibilityBridge$g;)Z
    .locals 1
    .param p1    # Lio/flutter/view/AccessibilityBridge$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$h;->v:I

    iget p1, p1, Lio/flutter/view/AccessibilityBridge$g;->value:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic d(Lio/flutter/view/AccessibilityBridge$h;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$h;->Y()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private d0(Lio/flutter/view/AccessibilityBridge$Action;)Z
    .locals 1
    .param p1    # Lio/flutter/view/AccessibilityBridge$Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$h;->d:I

    iget p1, p1, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic e(Lio/flutter/view/AccessibilityBridge$h;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$h;->b:I

    return p0
.end method

.method private e0(Lio/flutter/view/AccessibilityBridge$g;)Z
    .locals 1
    .param p1    # Lio/flutter/view/AccessibilityBridge$g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$h;->c:I

    iget p1, p1, Lio/flutter/view/AccessibilityBridge$g;->value:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic f(Lio/flutter/view/AccessibilityBridge$h;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/flutter/view/AccessibilityBridge$h;->b:I

    return p1
.end method

.method private f0([F)Lio/flutter/view/AccessibilityBridge$h;
    .locals 9

    const/4 v0, 0x3

    .line 1
    aget v0, p1, v0

    const/4 v1, 0x0

    .line 2
    aget v1, p1, v1

    div-float/2addr v1, v0

    const/4 v2, 0x1

    .line 3
    aget v2, p1, v2

    div-float/2addr v2, v0

    .line 4
    iget v0, p0, Lio/flutter/view/AccessibilityBridge$h;->E:F

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_4

    iget v0, p0, Lio/flutter/view/AccessibilityBridge$h;->G:F

    cmpl-float v0, v1, v0

    if-gez v0, :cond_4

    iget v0, p0, Lio/flutter/view/AccessibilityBridge$h;->F:F

    cmpg-float v0, v2, v0

    if-ltz v0, :cond_4

    iget v0, p0, Lio/flutter/view/AccessibilityBridge$h;->H:F

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 5
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->L:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lio/flutter/view/AccessibilityBridge$h;

    .line 6
    sget-object v1, Lio/flutter/view/AccessibilityBridge$g;->IS_HIDDEN:Lio/flutter/view/AccessibilityBridge$g;

    invoke-direct {v8, v1}, Lio/flutter/view/AccessibilityBridge$h;->e0(Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {v8}, Lio/flutter/view/AccessibilityBridge$h;->W()V

    const/4 v2, 0x0

    .line 8
    iget-object v3, v8, Lio/flutter/view/AccessibilityBridge$h;->Q:[F

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 9
    invoke-direct {v8, v0}, Lio/flutter/view/AccessibilityBridge$h;->f0([F)Lio/flutter/view/AccessibilityBridge$h;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic g(Lio/flutter/view/AccessibilityBridge$h;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$h;->g0()Z

    move-result p0

    return p0
.end method

.method private g0()Z
    .locals 4

    .line 1
    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->SCOPES_ROUTE:Lio/flutter/view/AccessibilityBridge$g;

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge$h;->e0(Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->IS_FOCUSABLE:Lio/flutter/view/AccessibilityBridge$g;

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge$h;->e0(Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    iget v0, v0, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    sget-object v3, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    iget v3, v3, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    or-int/2addr v0, v3

    sget-object v3, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    iget v3, v3, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    or-int/2addr v0, v3

    sget-object v3, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    iget v3, v3, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    or-int/2addr v0, v3

    .line 4
    iget v3, p0, Lio/flutter/view/AccessibilityBridge$h;->d:I

    not-int v0, v0

    and-int/2addr v0, v3

    if-nez v0, :cond_4

    iget v0, p0, Lio/flutter/view/AccessibilityBridge$h;->c:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$h;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$h;->p:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$h;->s:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method static synthetic h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$h;->e0(Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result p0

    return p0
.end method

.method private h0(FFFF)F
    .locals 0

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method static synthetic i(Lio/flutter/view/AccessibilityBridge$h;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$h;->g:I

    return p0
.end method

.method private i0(FFFF)F
    .locals 0

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method static synthetic j(Lio/flutter/view/AccessibilityBridge$h;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$h;->h:I

    return p0
.end method

.method private static j0(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/util/Predicate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/view/AccessibilityBridge$h;",
            "Lio/flutter/util/Predicate<",
            "Lio/flutter/view/AccessibilityBridge$h;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$h;->X(Lio/flutter/util/Predicate;)Lio/flutter/view/AccessibilityBridge$h;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$h;->d0(Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p0

    return p0
.end method

.method private k0([F[F[F)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    .line 1
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/4 p2, 0x3

    .line 2
    aget p3, p1, p2

    const/4 v0, 0x0

    .line 3
    aget v1, p1, v0

    div-float/2addr v1, p3

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 4
    aget v1, p1, v0

    div-float/2addr v1, p3

    aput v1, p1, v0

    const/4 v0, 0x2

    .line 5
    aget v1, p1, v0

    div-float/2addr v1, p3

    aput v1, p1, v0

    const/4 p3, 0x0

    .line 6
    aput p3, p1, p2

    return-void
.end method

.method static synthetic l(Lio/flutter/view/AccessibilityBridge$h;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$h;->e:I

    return p0
.end method

.method private l0([FLjava/util/Set;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/Set<",
            "Lio/flutter/view/AccessibilityBridge$h;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    iget-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$h;->R:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p3, 0x1

    :cond_0
    if-eqz p3, :cond_3

    .line 3
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$h;->S:[F

    if-nez v0, :cond_1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge$h;->S:[F

    .line 5
    :cond_1
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$h;->S:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lio/flutter/view/AccessibilityBridge$h;->I:[F

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 p1, 0x4

    new-array v0, p1, [F

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v0, v2

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v2

    new-array v2, p1, [F

    new-array v3, p1, [F

    new-array v4, p1, [F

    new-array p1, p1, [F

    .line 6
    iget v5, p0, Lio/flutter/view/AccessibilityBridge$h;->E:F

    const/4 v6, 0x0

    aput v5, v0, v6

    .line 7
    iget v5, p0, Lio/flutter/view/AccessibilityBridge$h;->F:F

    aput v5, v0, v1

    .line 8
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge$h;->S:[F

    invoke-direct {p0, v2, v5, v0}, Lio/flutter/view/AccessibilityBridge$h;->k0([F[F[F)V

    .line 9
    iget v5, p0, Lio/flutter/view/AccessibilityBridge$h;->G:F

    aput v5, v0, v6

    .line 10
    iget v5, p0, Lio/flutter/view/AccessibilityBridge$h;->F:F

    aput v5, v0, v1

    .line 11
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge$h;->S:[F

    invoke-direct {p0, v3, v5, v0}, Lio/flutter/view/AccessibilityBridge$h;->k0([F[F[F)V

    .line 12
    iget v5, p0, Lio/flutter/view/AccessibilityBridge$h;->G:F

    aput v5, v0, v6

    .line 13
    iget v5, p0, Lio/flutter/view/AccessibilityBridge$h;->H:F

    aput v5, v0, v1

    .line 14
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge$h;->S:[F

    invoke-direct {p0, v4, v5, v0}, Lio/flutter/view/AccessibilityBridge$h;->k0([F[F[F)V

    .line 15
    iget v5, p0, Lio/flutter/view/AccessibilityBridge$h;->E:F

    aput v5, v0, v6

    .line 16
    iget v5, p0, Lio/flutter/view/AccessibilityBridge$h;->H:F

    aput v5, v0, v1

    .line 17
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge$h;->S:[F

    invoke-direct {p0, p1, v5, v0}, Lio/flutter/view/AccessibilityBridge$h;->k0([F[F[F)V

    .line 18
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$h;->T:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge$h;->T:Landroid/graphics/Rect;

    .line 19
    :cond_2
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$h;->T:Landroid/graphics/Rect;

    aget v5, v2, v6

    aget v7, v3, v6

    aget v8, v4, v6

    aget v9, p1, v6

    .line 20
    invoke-direct {p0, v5, v7, v8, v9}, Lio/flutter/view/AccessibilityBridge$h;->i0(FFFF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aget v7, v2, v1

    aget v8, v3, v1

    aget v9, v4, v1

    aget v10, p1, v1

    .line 21
    invoke-direct {p0, v7, v8, v9, v10}, Lio/flutter/view/AccessibilityBridge$h;->i0(FFFF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aget v8, v2, v6

    aget v9, v3, v6

    aget v10, v4, v6

    aget v11, p1, v6

    .line 22
    invoke-direct {p0, v8, v9, v10, v11}, Lio/flutter/view/AccessibilityBridge$h;->h0(FFFF)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    aget v2, v2, v1

    aget v3, v3, v1

    aget v4, v4, v1

    aget p1, p1, v1

    .line 23
    invoke-direct {p0, v2, v3, v4, p1}, Lio/flutter/view/AccessibilityBridge$h;->h0(FFFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 24
    invoke-virtual {v0, v5, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 25
    iput-boolean v6, p0, Lio/flutter/view/AccessibilityBridge$h;->R:Z

    .line 26
    :cond_3
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge$h;->K:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$h;

    .line 27
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->S:[F

    invoke-direct {v0, v1, p2, p3}, Lio/flutter/view/AccessibilityBridge$h;->l0([FLjava/util/Set;Z)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic m(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$h;->p:Ljava/lang/String;

    return-object p0
.end method

.method private m0(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$h;->u:Z

    .line 2
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->p:Ljava/lang/String;

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->C:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->o:Ljava/lang/String;

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->D:Ljava/lang/String;

    .line 4
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$h;->c:I

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->v:I

    .line 5
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$h;->d:I

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->w:I

    .line 6
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$h;->g:I

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->x:I

    .line 7
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$h;->h:I

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->y:I

    .line 8
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$h;->l:F

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->z:F

    .line 9
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$h;->m:F

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->A:F

    .line 10
    iget v1, p0, Lio/flutter/view/AccessibilityBridge$h;->n:F

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->B:F

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->c:I

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->d:I

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->e:I

    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->f:I

    .line 15
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->g:I

    .line 16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->h:I

    .line 17
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->i:I

    .line 18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->j:I

    .line 19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->k:I

    .line 20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->l:F

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->m:F

    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v1

    iput v1, p0, Lio/flutter/view/AccessibilityBridge$h;->n:F

    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move-object v1, v3

    goto :goto_0

    .line 24
    :cond_0
    aget-object v1, p2, v1

    :goto_0
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->o:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    move-object v1, v3

    goto :goto_1

    .line 26
    :cond_1
    aget-object v1, p2, v1

    :goto_1
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->p:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    move-object v1, v3

    goto :goto_2

    .line 28
    :cond_2
    aget-object v1, p2, v1

    :goto_2
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->q:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v2, :cond_3

    move-object v1, v3

    goto :goto_3

    .line 30
    :cond_3
    aget-object v1, p2, v1

    :goto_3
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->r:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v2, :cond_4

    move-object p2, v3

    goto :goto_4

    .line 32
    :cond_4
    aget-object p2, p2, v1

    :goto_4
    iput-object p2, p0, Lio/flutter/view/AccessibilityBridge$h;->s:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$i;->a(I)Lio/flutter/view/AccessibilityBridge$i;

    move-result-object p2

    iput-object p2, p0, Lio/flutter/view/AccessibilityBridge$h;->t:Lio/flutter/view/AccessibilityBridge$i;

    .line 34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p2

    iput p2, p0, Lio/flutter/view/AccessibilityBridge$h;->E:F

    .line 35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p2

    iput p2, p0, Lio/flutter/view/AccessibilityBridge$h;->F:F

    .line 36
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p2

    iput p2, p0, Lio/flutter/view/AccessibilityBridge$h;->G:F

    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p2

    iput p2, p0, Lio/flutter/view/AccessibilityBridge$h;->H:F

    .line 38
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge$h;->I:[F

    const/16 v1, 0x10

    if-nez p2, :cond_5

    new-array p2, v1, [F

    .line 39
    iput-object p2, p0, Lio/flutter/view/AccessibilityBridge$h;->I:[F

    :cond_5
    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_6

    .line 40
    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge$h;->I:[F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 41
    :cond_6
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$h;->P:Z

    .line 42
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge$h;->R:Z

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 44
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->K:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 45
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->L:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_7

    .line 46
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$h;->a:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v2, v4}, Lio/flutter/view/AccessibilityBridge;->l(Lio/flutter/view/AccessibilityBridge;I)Lio/flutter/view/AccessibilityBridge$h;

    move-result-object v2

    .line 47
    iput-object p0, v2, Lio/flutter/view/AccessibilityBridge$h;->J:Lio/flutter/view/AccessibilityBridge$h;

    .line 48
    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge$h;->K:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_8

    .line 49
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$h;->a:Lio/flutter/view/AccessibilityBridge;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-static {v2, v4}, Lio/flutter/view/AccessibilityBridge;->l(Lio/flutter/view/AccessibilityBridge;I)Lio/flutter/view/AccessibilityBridge$h;

    move-result-object v2

    .line 50
    iput-object p0, v2, Lio/flutter/view/AccessibilityBridge$h;->J:Lio/flutter/view/AccessibilityBridge$h;

    .line 51
    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge$h;->L:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 52
    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-nez v0, :cond_9

    .line 53
    iput-object v3, p0, Lio/flutter/view/AccessibilityBridge$h;->M:Ljava/util/List;

    goto :goto_a

    .line 54
    :cond_9
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->M:Ljava/util/List;

    if-nez v1, :cond_a

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->M:Ljava/util/List;

    goto :goto_8

    .line 56
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_8
    if-ge p2, v0, :cond_d

    .line 57
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->a:Lio/flutter/view/AccessibilityBridge;

    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    invoke-static {v1, v2}, Lio/flutter/view/AccessibilityBridge;->m(Lio/flutter/view/AccessibilityBridge;I)Lio/flutter/view/AccessibilityBridge$f;

    move-result-object v1

    .line 59
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$f;->i(Lio/flutter/view/AccessibilityBridge$f;)I

    move-result v2

    sget-object v3, Lio/flutter/view/AccessibilityBridge$Action;->TAP:Lio/flutter/view/AccessibilityBridge$Action;

    iget v3, v3, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    if-ne v2, v3, :cond_b

    .line 60
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->N:Lio/flutter/view/AccessibilityBridge$f;

    goto :goto_9

    .line 61
    :cond_b
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$f;->i(Lio/flutter/view/AccessibilityBridge$f;)I

    move-result v2

    sget-object v3, Lio/flutter/view/AccessibilityBridge$Action;->LONG_PRESS:Lio/flutter/view/AccessibilityBridge$Action;

    iget v3, v3, Lio/flutter/view/AccessibilityBridge$Action;->value:I

    if-ne v2, v3, :cond_c

    .line 62
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge$h;->O:Lio/flutter/view/AccessibilityBridge$f;

    goto :goto_9

    .line 63
    :cond_c
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$h;->M:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :goto_9
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge$h;->M:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_d
    :goto_a
    return-void
.end method

.method static synthetic n(Lio/flutter/view/AccessibilityBridge$h;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$h;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic o(Lio/flutter/view/AccessibilityBridge$h;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/flutter/view/AccessibilityBridge$h;->f:I

    return p0
.end method

.method static synthetic p(Lio/flutter/view/AccessibilityBridge$h;)Lio/flutter/view/AccessibilityBridge$h;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$h;->J:Lio/flutter/view/AccessibilityBridge$h;

    return-object p0
.end method

.method static synthetic q(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$h;)Lio/flutter/view/AccessibilityBridge$h;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$h;->J:Lio/flutter/view/AccessibilityBridge$h;

    return-object p1
.end method

.method static synthetic r(Lio/flutter/view/AccessibilityBridge$h;)Lio/flutter/view/AccessibilityBridge$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$h;->N:Lio/flutter/view/AccessibilityBridge$f;

    return-object p0
.end method

.method static synthetic s(Lio/flutter/view/AccessibilityBridge$h;)Lio/flutter/view/AccessibilityBridge$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$h;->O:Lio/flutter/view/AccessibilityBridge$f;

    return-object p0
.end method

.method static synthetic t(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge$h;->a0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic u(Lio/flutter/view/AccessibilityBridge$h;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$h;->M:Ljava/util/List;

    return-object p0
.end method

.method static synthetic v(Lio/flutter/view/AccessibilityBridge$h;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$h;->K:Ljava/util/List;

    return-object p0
.end method

.method static synthetic w(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$h;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$h;->r:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic y(Lio/flutter/view/AccessibilityBridge$h;[F)Lio/flutter/view/AccessibilityBridge$h;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge$h;->f0([F)Lio/flutter/view/AccessibilityBridge$h;

    move-result-object p0

    return-object p0
.end method

.method static synthetic z(Lio/flutter/view/AccessibilityBridge$h;Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityBridge$h;->m0(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V

    return-void
.end method
