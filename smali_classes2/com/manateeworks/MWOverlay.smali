.class public Lcom/manateeworks/MWOverlay;
.super Landroid/view/View;
.source "MWOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manateeworks/MWOverlay$LayerType;
    }
.end annotation


# static fields
.field private static a:Z = false

.field private static b:I = -0x1

.field public static blinkingLineAlpha:F = 1.0f

.field public static blinkingLineColor:I = 0xff0000

.field public static blinkingLineWidth:F = 1.0f

.field public static blinkingSpeed:F = 0.25f

.field private static c:F = -1.0f

.field private static d:F = -1.0f

.field private static e:F = -1.0f

.field private static f:F = -1.0f

.field private static g:F = -1.0f

.field private static h:F = 1.0f

.field private static i:Lcom/manateeworks/MWOverlay; = null

.field public static isBlinkingLineVisible:Z = true

.field public static isViewportVisible:Z = true

.field private static j:Lcom/manateeworks/MWOverlay; = null

.field private static k:Lcom/manateeworks/MWOverlay; = null

.field private static l:Ljava/util/Timer; = null

.field public static locationLineColor:I = 0xff00

.field public static locationLineWidth:F = 4.0f

.field private static m:Landroid/content/Context; = null

.field private static n:Z = false

.field public static viewportAlpha:F = 0.5f

.field public static viewportLineAlpha:F = 0.5f

.field public static viewportLineColor:I = 0xff0000

.field public static viewportLineWidth:F = 3.0f


# instance fields
.field private o:[Landroid/graphics/PointF;

.field private p:I

.field private q:I

.field private r:Lcom/manateeworks/MWOverlay$LayerType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/manateeworks/MWOverlay;->o:[Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/manateeworks/MWOverlay;->p:I

    .line 4
    iput p1, p0, Lcom/manateeworks/MWOverlay;->q:I

    return-void
.end method

.method static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/manateeworks/MWOverlay;->c()V

    return-void
.end method

.method public static addOverlay(Landroid/content/Context;Landroid/view/View;)Lcom/manateeworks/MWOverlay;
    .locals 9

    .line 1
    sget-boolean v0, Lcom/manateeworks/MWOverlay;->a:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/manateeworks/MWOverlay;->a:Z

    .line 3
    sput-object p0, Lcom/manateeworks/MWOverlay;->m:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 6
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/manateeworks/MWOverlay;->h:F

    .line 7
    new-instance v2, Lcom/manateeworks/MWOverlay;

    invoke-direct {v2, p0}, Lcom/manateeworks/MWOverlay;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/manateeworks/MWOverlay;->i:Lcom/manateeworks/MWOverlay;

    .line 8
    sget-object v3, Lcom/manateeworks/MWOverlay$LayerType;->LT_VIEWPORT:Lcom/manateeworks/MWOverlay$LayerType;

    iput-object v3, v2, Lcom/manateeworks/MWOverlay;->r:Lcom/manateeworks/MWOverlay$LayerType;

    .line 9
    new-instance v2, Lcom/manateeworks/MWOverlay;

    invoke-direct {v2, p0}, Lcom/manateeworks/MWOverlay;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/manateeworks/MWOverlay;->j:Lcom/manateeworks/MWOverlay;

    .line 10
    sget-object v3, Lcom/manateeworks/MWOverlay$LayerType;->LT_LINE:Lcom/manateeworks/MWOverlay$LayerType;

    iput-object v3, v2, Lcom/manateeworks/MWOverlay;->r:Lcom/manateeworks/MWOverlay$LayerType;

    .line 11
    new-instance v2, Lcom/manateeworks/MWOverlay;

    invoke-direct {v2, p0}, Lcom/manateeworks/MWOverlay;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/manateeworks/MWOverlay;->k:Lcom/manateeworks/MWOverlay;

    .line 12
    sget-object p0, Lcom/manateeworks/MWOverlay$LayerType;->LT_LOCATION:Lcom/manateeworks/MWOverlay$LayerType;

    iput-object p0, v2, Lcom/manateeworks/MWOverlay;->r:Lcom/manateeworks/MWOverlay$LayerType;

    .line 13
    sget-object p0, Lcom/manateeworks/MWOverlay;->i:Lcom/manateeworks/MWOverlay;

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 14
    sget-object p0, Lcom/manateeworks/MWOverlay;->j:Lcom/manateeworks/MWOverlay;

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 15
    sget-object p0, Lcom/manateeworks/MWOverlay;->k:Lcom/manateeworks/MWOverlay;

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 16
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    add-int/2addr p0, v2

    if-lez p0, :cond_1

    .line 17
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 18
    :cond_1
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 19
    :goto_0
    sget-object v2, Lcom/manateeworks/MWOverlay;->i:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v1, v2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    sget-object v2, Lcom/manateeworks/MWOverlay;->j:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v1, v2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    sget-object v2, Lcom/manateeworks/MWOverlay;->k:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v1, v2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    sget-object p0, Lcom/manateeworks/MWOverlay;->k:Lcom/manateeworks/MWOverlay;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, p0, :cond_2

    .line 24
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    sput-object v3, Lcom/manateeworks/MWOverlay;->l:Ljava/util/Timer;

    .line 25
    new-instance v4, Lcom/manateeworks/MWOverlay$a;

    invoke-direct {v4}, Lcom/manateeworks/MWOverlay$a;-><init>()V

    const-wide/16 v5, 0xc8

    const-wide/16 v7, 0xc8

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 26
    sget-object p0, Lcom/manateeworks/MWOverlay;->i:Lcom/manateeworks/MWOverlay;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 27
    sget-object p0, Lcom/manateeworks/MWOverlay;->j:Lcom/manateeworks/MWOverlay;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 28
    invoke-static {}, Lcom/manateeworks/MWOverlay;->d()V

    .line 29
    sget-object p0, Lcom/manateeworks/MWOverlay;->i:Lcom/manateeworks/MWOverlay;

    return-object p0

    .line 30
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 31
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/manateeworks/MWOverlay;->i:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/manateeworks/MWOverlay;->j:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/manateeworks/MWOverlay;->k:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 32
    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 p0, p0, -0x1

    :cond_3
    add-int/2addr v2, v0

    goto :goto_1
.end method

.method static synthetic b()Lcom/manateeworks/MWOverlay;
    .locals 1

    .line 1
    sget-object v0, Lcom/manateeworks/MWOverlay;->k:Lcom/manateeworks/MWOverlay;

    return-object v0
.end method

.method private static c()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/manateeworks/BarcodeScanner;->MWBgetScanningRect(I)Landroid/graphics/RectF;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/manateeworks/BarcodeScanner;->MWBgetDirection()I

    move-result v2

    .line 3
    sget v3, Lcom/manateeworks/MWOverlay;->b:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Landroid/graphics/RectF;->left:F

    sget v3, Lcom/manateeworks/MWOverlay;->c:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v1, Landroid/graphics/RectF;->top:F

    sget v3, Lcom/manateeworks/MWOverlay;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, v1, Landroid/graphics/RectF;->right:F

    sget v3, Lcom/manateeworks/MWOverlay;->e:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sget v2, Lcom/manateeworks/MWOverlay;->f:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 4
    :cond_0
    sget-object v1, Lcom/manateeworks/MWOverlay;->i:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 5
    sget-object v1, Lcom/manateeworks/MWOverlay;->j:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 6
    :cond_1
    sget v1, Lcom/manateeworks/MWOverlay;->g:F

    sget v2, Lcom/manateeworks/MWOverlay;->blinkingSpeed:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 7
    invoke-static {}, Lcom/manateeworks/MWOverlay;->d()V

    .line 8
    :cond_2
    sget-boolean v1, Lcom/manateeworks/MWOverlay;->isBlinkingLineVisible:Z

    sget-object v2, Lcom/manateeworks/MWOverlay;->j:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eq v1, v2, :cond_4

    .line 9
    sget-object v1, Lcom/manateeworks/MWOverlay;->j:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 10
    :cond_4
    sget-boolean v1, Lcom/manateeworks/MWOverlay;->isViewportVisible:Z

    sget-object v2, Lcom/manateeworks/MWOverlay;->i:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    const/4 v0, 0x1

    :cond_5
    if-eq v1, v0, :cond_6

    .line 11
    sget-object v0, Lcom/manateeworks/MWOverlay;->i:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_6
    return-void
.end method

.method private static d()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 4
    sget v1, Lcom/manateeworks/MWOverlay;->blinkingSpeed:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float v1, v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 5
    sget-object v1, Lcom/manateeworks/MWOverlay;->j:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    sget v0, Lcom/manateeworks/MWOverlay;->blinkingSpeed:F

    sput v0, Lcom/manateeworks/MWOverlay;->g:F

    return-void
.end method

.method public static removeOverlay()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/manateeworks/MWOverlay;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/manateeworks/MWOverlay;->j:Lcom/manateeworks/MWOverlay;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/manateeworks/MWOverlay;->i:Lcom/manateeworks/MWOverlay;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/manateeworks/MWOverlay;->a:Z

    .line 4
    sget-object v0, Lcom/manateeworks/MWOverlay;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 5
    sget-object v0, Lcom/manateeworks/MWOverlay;->j:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 7
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 8
    :cond_2
    sget-object v0, Lcom/manateeworks/MWOverlay;->j:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 9
    sget-object v1, Lcom/manateeworks/MWOverlay;->j:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    sget-object v1, Lcom/manateeworks/MWOverlay;->i:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 11
    sget-object v1, Lcom/manateeworks/MWOverlay;->k:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static setPaused(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/manateeworks/MWOverlay;->n:Z

    .line 2
    sget-object p0, Lcom/manateeworks/MWOverlay;->i:Lcom/manateeworks/MWOverlay;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/manateeworks/MWOverlay;->j:Lcom/manateeworks/MWOverlay;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public static showLocation([Landroid/graphics/PointF;II)V
    .locals 7

    .line 1
    sget-object v0, Lcom/manateeworks/MWOverlay;->k:Lcom/manateeworks/MWOverlay;

    iput p1, v0, Lcom/manateeworks/MWOverlay;->p:I

    .line 2
    iput p2, v0, Lcom/manateeworks/MWOverlay;->q:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    sget-object v0, Lcom/manateeworks/MWOverlay;->m:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 5
    sget-object v2, Lcom/manateeworks/MWOverlay;->k:Lcom/manateeworks/MWOverlay;

    iput-object p0, v2, Lcom/manateeworks/MWOverlay;->o:[Landroid/graphics/PointF;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-ne v0, v3, :cond_1

    :goto_0
    if-lt v1, v4, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    sget-object v0, Lcom/manateeworks/MWOverlay;->k:Lcom/manateeworks/MWOverlay;

    iget-object v0, v0, Lcom/manateeworks/MWOverlay;->o:[Landroid/graphics/PointF;

    aget-object v3, v0, v1

    int-to-float v5, p1

    aget-object v6, p0, v1

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 7
    aget-object v0, v0, v1

    int-to-float v3, p2

    aget-object v5, p0, v1

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    iput v3, v0, Landroid/graphics/PointF;->y:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    :goto_1
    if-lt v1, v4, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    sget-object v0, Lcom/manateeworks/MWOverlay;->k:Lcom/manateeworks/MWOverlay;

    iget-object v0, v0, Lcom/manateeworks/MWOverlay;->o:[Landroid/graphics/PointF;

    aget-object v3, v0, v1

    int-to-float v5, p1

    aget-object v6, p0, v1

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 9
    aget-object v0, v0, v1

    int-to-float v3, p2

    aget-object v5, p0, v1

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    iput v3, v0, Landroid/graphics/PointF;->y:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_3
    :goto_2
    sget-object p0, Lcom/manateeworks/MWOverlay;->k:Lcom/manateeworks/MWOverlay;

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/view/animation/Animation;->cancel()V

    .line 12
    invoke-virtual {p0}, Landroid/view/animation/Animation;->reset()V

    .line 13
    :cond_4
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 p1, 0x1f4

    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 15
    invoke-virtual {p0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 16
    new-instance p1, Lcom/manateeworks/MWOverlay$b;

    invoke-direct {p1}, Lcom/manateeworks/MWOverlay$b;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 17
    sget-object p1, Lcom/manateeworks/MWOverlay;->k:Lcom/manateeworks/MWOverlay;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 18
    sget-object p0, Lcom/manateeworks/MWOverlay;->k:Lcom/manateeworks/MWOverlay;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    invoke-static {v1}, Lcom/manateeworks/BarcodeScanner;->MWBgetScanningRect(I)Landroid/graphics/RectF;

    move-result-object v2

    .line 2
    sget-object v3, Lcom/manateeworks/MWOverlay;->m:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    const/4 v4, 0x2

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v6, 0x1

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->top:F

    sub-float v7, v5, v7

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v7, v8

    iget v9, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-direct {v3, v7, v9, v8, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    move-object v2, v3

    goto :goto_1

    :cond_0
    if-eq v3, v6, :cond_2

    if-ne v3, v4, :cond_1

    .line 4
    new-instance v3, Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->left:F

    iget v8, v2, Landroid/graphics/RectF;->top:F

    sub-float v8, v5, v8

    iget v9, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v8, v9

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-direct {v3, v7, v8, v2, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->left:F

    sub-float v7, v5, v7

    iget v8, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v7, v8

    iget v9, v2, Landroid/graphics/RectF;->top:F

    sub-float v9, v5, v9

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v9, v2

    invoke-direct {v3, v7, v9, v8, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    .line 6
    :cond_2
    :goto_1
    iget v3, v2, Landroid/graphics/RectF;->left:F

    sput v3, Lcom/manateeworks/MWOverlay;->c:F

    .line 7
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sput v3, Lcom/manateeworks/MWOverlay;->d:F

    .line 8
    iget v3, v2, Landroid/graphics/RectF;->right:F

    sput v3, Lcom/manateeworks/MWOverlay;->e:F

    .line 9
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sput v3, Lcom/manateeworks/MWOverlay;->f:F

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    .line 12
    iget v8, v2, Landroid/graphics/RectF;->left:F

    int-to-float v15, v3

    mul-float v8, v8, v15

    div-float/2addr v8, v5

    .line 13
    iget v9, v2, Landroid/graphics/RectF;->top:F

    int-to-float v14, v7

    mul-float v9, v9, v14

    div-float/2addr v9, v5

    .line 14
    iget v10, v2, Landroid/graphics/RectF;->right:F

    mul-float v10, v10, v15

    div-float/2addr v10, v5

    .line 15
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    mul-float v2, v2, v14

    div-float/2addr v2, v5

    .line 16
    new-instance v5, Landroid/graphics/RectF;

    add-float/2addr v10, v8

    add-float/2addr v2, v9

    invoke-direct {v5, v8, v9, v10, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 17
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 18
    iget-object v8, v0, Lcom/manateeworks/MWOverlay;->r:Lcom/manateeworks/MWOverlay$LayerType;

    sget-object v9, Lcom/manateeworks/MWOverlay$LayerType;->LT_LOCATION:Lcom/manateeworks/MWOverlay$LayerType;

    const/4 v10, 0x4

    if-ne v8, v9, :cond_6

    iget-object v9, v0, Lcom/manateeworks/MWOverlay;->o:[Landroid/graphics/PointF;

    if-eqz v9, :cond_6

    sget-object v9, Lcom/manateeworks/MWOverlay;->k:Lcom/manateeworks/MWOverlay;

    iget-object v9, v9, Lcom/manateeworks/MWOverlay;->o:[Landroid/graphics/PointF;

    if-eqz v9, :cond_6

    .line 19
    sget v3, Lcom/manateeworks/MWOverlay;->locationLineColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0xff

    .line 20
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 21
    sget v3, Lcom/manateeworks/MWOverlay;->locationLineWidth:F

    sget v5, Lcom/manateeworks/MWOverlay;->h:F

    mul-float v3, v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-array v9, v10, [Landroid/graphics/PointF;

    .line 22
    iget v3, v0, Lcom/manateeworks/MWOverlay;->p:I

    int-to-float v3, v3

    div-float v3, v15, v3

    .line 23
    iget v5, v0, Lcom/manateeworks/MWOverlay;->q:I

    int-to-float v5, v5

    div-float v5, v14, v5

    .line 24
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v6, :cond_3

    .line 25
    iget v3, v0, Lcom/manateeworks/MWOverlay;->q:I

    int-to-float v3, v3

    div-float v3, v15, v3

    .line 26
    iget v5, v0, Lcom/manateeworks/MWOverlay;->p:I

    int-to-float v5, v5

    div-float v5, v14, v5

    :cond_3
    move v11, v3

    move v12, v5

    const/4 v3, 0x0

    :goto_2
    if-lt v3, v10, :cond_4

    .line 27
    aget-object v3, v9, v1

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v5, v9, v1

    iget v5, v5, Landroid/graphics/PointF;->y:F

    aget-object v7, v9, v6

    iget v7, v7, Landroid/graphics/PointF;->x:F

    aget-object v8, v9, v6

    iget v8, v8, Landroid/graphics/PointF;->y:F

    move-object/from16 v16, p1

    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 v21, v2

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 28
    aget-object v3, v9, v6

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v5, v9, v6

    iget v5, v5, Landroid/graphics/PointF;->y:F

    aget-object v6, v9, v4

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v7, v9, v4

    iget v7, v7, Landroid/graphics/PointF;->y:F

    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 29
    aget-object v3, v9, v4

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v9, v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x3

    aget-object v6, v9, v5

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aget-object v7, v9, v5

    iget v7, v7, Landroid/graphics/PointF;->y:F

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 30
    aget-object v3, v9, v5

    iget v3, v3, Landroid/graphics/PointF;->x:F

    aget-object v4, v9, v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    aget-object v5, v9, v1

    iget v5, v5, Landroid/graphics/PointF;->x:F

    aget-object v1, v9, v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v1

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 31
    :cond_4
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    aput-object v5, v9, v3

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v6, :cond_5

    .line 33
    aget-object v5, v9, v3

    sget-object v7, Lcom/manateeworks/MWOverlay;->k:Lcom/manateeworks/MWOverlay;

    iget-object v7, v7, Lcom/manateeworks/MWOverlay;->o:[Landroid/graphics/PointF;

    aget-object v8, v7, v3

    iget v8, v8, Landroid/graphics/PointF;->y:F

    mul-float v8, v8, v12

    sub-float v8, v15, v8

    iput v8, v5, Landroid/graphics/PointF;->x:F

    .line 34
    aget-object v5, v9, v3

    aget-object v7, v7, v3

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float v7, v7, v11

    iput v7, v5, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 35
    :cond_5
    aget-object v5, v9, v3

    sget-object v7, Lcom/manateeworks/MWOverlay;->k:Lcom/manateeworks/MWOverlay;

    iget-object v7, v7, Lcom/manateeworks/MWOverlay;->o:[Landroid/graphics/PointF;

    aget-object v8, v7, v3

    iget v8, v8, Landroid/graphics/PointF;->x:F

    mul-float v8, v8, v11

    iput v8, v5, Landroid/graphics/PointF;->x:F

    .line 36
    aget-object v5, v9, v3

    aget-object v7, v7, v3

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float v7, v7, v12

    iput v7, v5, Landroid/graphics/PointF;->y:F

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 37
    :cond_6
    sget-object v4, Lcom/manateeworks/MWOverlay$LayerType;->LT_VIEWPORT:Lcom/manateeworks/MWOverlay$LayerType;

    const/high16 v22, 0x437f0000    # 255.0f

    const/high16 v23, 0x3f800000    # 1.0f

    if-ne v8, v4, :cond_a

    .line 38
    sget-boolean v3, Lcom/manateeworks/MWOverlay;->isViewportVisible:Z

    sget-object v4, Lcom/manateeworks/MWOverlay;->i:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    if-eq v3, v6, :cond_9

    .line 39
    sget-boolean v3, Lcom/manateeworks/MWOverlay;->isViewportVisible:Z

    if-eqz v3, :cond_8

    .line 40
    sget-object v3, Lcom/manateeworks/MWOverlay;->i:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 41
    :cond_8
    sget-object v1, Lcom/manateeworks/MWOverlay;->i:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_5
    const/high16 v1, -0x1000000

    .line 42
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    sget v1, Lcom/manateeworks/MWOverlay;->viewportAlpha:F

    mul-float v1, v1, v22

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 44
    iget v13, v5, Landroid/graphics/RectF;->top:F

    move-object/from16 v9, p1

    move v12, v15

    move v1, v14

    move-object v14, v2

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/16 v17, 0x0

    .line 45
    iget v3, v5, Landroid/graphics/RectF;->top:F

    iget v4, v5, Landroid/graphics/RectF;->left:F

    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    add-float v20, v6, v23

    move-object/from16 v16, p1

    move/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v21, v2

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 46
    iget v3, v5, Landroid/graphics/RectF;->right:F

    add-float v10, v3, v23

    iget v11, v5, Landroid/graphics/RectF;->top:F

    iget v3, v5, Landroid/graphics/RectF;->bottom:F

    add-float v13, v3, v23

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v10, 0x0

    .line 47
    iget v3, v5, Landroid/graphics/RectF;->bottom:F

    add-float v11, v3, v23

    move v13, v1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 48
    sget v1, Lcom/manateeworks/MWOverlay;->viewportLineColor:I

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    sget v1, Lcom/manateeworks/MWOverlay;->viewportLineAlpha:F

    mul-float v1, v1, v22

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 50
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    sget v1, Lcom/manateeworks/MWOverlay;->viewportLineWidth:F

    sget v3, Lcom/manateeworks/MWOverlay;->h:F

    mul-float v1, v1, v3

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget v1, v5, Landroid/graphics/RectF;->left:F

    iget v3, v5, Landroid/graphics/RectF;->top:F

    iget v4, v5, Landroid/graphics/RectF;->right:F

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v1

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 53
    :cond_a
    sget-boolean v4, Lcom/manateeworks/MWOverlay;->isBlinkingLineVisible:Z

    sget-object v8, Lcom/manateeworks/MWOverlay;->j:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_b

    const/4 v8, 0x1

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    :goto_6
    if-eq v4, v8, :cond_e

    .line 54
    sget-boolean v4, Lcom/manateeworks/MWOverlay;->isBlinkingLineVisible:Z

    if-eqz v4, :cond_c

    .line 55
    sget-object v4, Lcom/manateeworks/MWOverlay;->j:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    invoke-static {}, Lcom/manateeworks/MWOverlay;->d()V

    goto :goto_7

    .line 57
    :cond_c
    sget-object v1, Lcom/manateeworks/MWOverlay;->j:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 58
    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 59
    invoke-virtual {v1}, Landroid/view/animation/Animation;->reset()V

    .line 60
    :cond_d
    sget-object v1, Lcom/manateeworks/MWOverlay;->j:Lcom/manateeworks/MWOverlay;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_e
    :goto_7
    sget v1, Lcom/manateeworks/MWOverlay;->blinkingLineColor:I

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    sget v1, Lcom/manateeworks/MWOverlay;->blinkingLineWidth:F

    sget v4, Lcom/manateeworks/MWOverlay;->h:F

    mul-float v1, v1, v4

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v11, 0x989680

    rem-long/2addr v8, v11

    long-to-double v8, v8

    const-wide v11, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v11

    const-wide v11, 0x40091eb851eb851fL    # 3.14

    mul-double v8, v8, v11

    .line 64
    sget v1, Lcom/manateeworks/MWOverlay;->blinkingSpeed:F

    float-to-double v11, v1

    div-double/2addr v8, v11

    .line 65
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    double-to-float v1, v8

    .line 66
    sget v4, Lcom/manateeworks/MWOverlay;->blinkingLineAlpha:F

    mul-float v4, v4, v1

    mul-float v4, v4, v22

    float-to-int v1, v4

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 67
    sget v1, Lcom/manateeworks/MWOverlay;->blinkingLineAlpha:F

    mul-float v1, v1, v22

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 68
    invoke-static {}, Lcom/manateeworks/BarcodeScanner;->MWBgetDirection()I

    move-result v1

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_f

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 70
    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    div-double/2addr v8, v13

    .line 71
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    div-double/2addr v13, v11

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v8, v11

    double-to-int v4, v8

    add-double/2addr v13, v11

    double-to-int v8, v13

    shr-int v9, v1, v4

    and-int/2addr v9, v6

    shr-int v11, v1, v8

    and-int/2addr v6, v11

    shl-int v4, v6, v4

    shl-int v6, v9, v8

    or-int/2addr v4, v6

    and-int/lit8 v1, v1, 0xc

    or-int/2addr v1, v4

    .line 72
    :cond_f
    sput v1, Lcom/manateeworks/MWOverlay;->b:I

    .line 73
    sget-boolean v4, Lcom/manateeworks/MWOverlay;->n:Z

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v4, :cond_10

    .line 74
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    .line 75
    iget v3, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v6

    add-float/2addr v3, v4

    div-float v4, v1, v6

    sub-float v17, v3, v4

    iget v3, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v3, v7

    sub-float v18, v3, v4

    iget v3, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v6

    add-float/2addr v3, v7

    sub-float/2addr v3, v4

    const/high16 v7, 0x40400000    # 3.0f

    div-float v7, v1, v7

    add-float v19, v3, v7

    .line 76
    iget v3, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v8, v6

    add-float/2addr v3, v8

    sub-float/2addr v3, v4

    add-float v20, v3, v1

    move-object/from16 v16, p1

    move-object/from16 v21, v2

    .line 77
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 78
    iget v3, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v8, v6

    add-float/2addr v3, v8

    const/high16 v8, 0x40c00000    # 6.0f

    div-float v8, v1, v8

    add-float v17, v3, v8

    iget v3, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float/2addr v9, v6

    add-float/2addr v3, v9

    sub-float v18, v3, v4

    iget v3, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v9

    div-float/2addr v9, v6

    add-float/2addr v3, v9

    add-float/2addr v3, v8

    add-float v19, v3, v7

    .line 79
    iget v3, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    sub-float/2addr v3, v4

    add-float v20, v3, v1

    .line 80
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    :cond_10
    and-int/lit8 v3, v1, 0x1

    if-gtz v3, :cond_11

    and-int/lit8 v3, v1, 0x4

    if-lez v3, :cond_12

    .line 81
    :cond_11
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v6

    iget v4, v5, Landroid/graphics/RectF;->top:F

    add-float v20, v3, v4

    .line 82
    iget v3, v5, Landroid/graphics/RectF;->left:F

    iget v4, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v16, p1

    move/from16 v17, v3

    move/from16 v18, v20

    move/from16 v19, v4

    move-object/from16 v21, v2

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_12
    and-int/lit8 v3, v1, 0x2

    if-gtz v3, :cond_13

    and-int/lit8 v3, v1, 0x4

    if-lez v3, :cond_14

    .line 83
    :cond_13
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v6

    iget v4, v5, Landroid/graphics/RectF;->left:F

    add-float v19, v3, v4

    .line 84
    iget v3, v5, Landroid/graphics/RectF;->top:F

    iget v4, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v20, v4, v23

    move-object/from16 v16, p1

    move/from16 v17, v19

    move/from16 v18, v3

    move-object/from16 v21, v2

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_14
    and-int/2addr v1, v10

    if-lez v1, :cond_15

    .line 85
    iget v1, v5, Landroid/graphics/RectF;->left:F

    add-float v17, v1, v6

    iget v1, v5, Landroid/graphics/RectF;->top:F

    add-float v18, v1, v6

    iget v1, v5, Landroid/graphics/RectF;->right:F

    sub-float v19, v1, v6

    iget v1, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v20, v1, v6

    move-object/from16 v16, p1

    move-object/from16 v21, v2

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 86
    iget v1, v5, Landroid/graphics/RectF;->right:F

    sub-float v17, v1, v6

    iget v1, v5, Landroid/graphics/RectF;->top:F

    add-float v18, v1, v6

    iget v1, v5, Landroid/graphics/RectF;->left:F

    add-float v19, v1, v6

    iget v1, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v20, v1, v6

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_15
    :goto_8
    return-void
.end method
