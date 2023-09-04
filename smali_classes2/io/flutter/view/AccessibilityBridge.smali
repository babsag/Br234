.class public Lio/flutter/view/AccessibilityBridge;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/AccessibilityBridge$h;,
        Lio/flutter/view/AccessibilityBridge$f;,
        Lio/flutter/view/AccessibilityBridge$i;,
        Lio/flutter/view/AccessibilityBridge$e;,
        Lio/flutter/view/AccessibilityBridge$g;,
        Lio/flutter/view/AccessibilityBridge$Action;,
        Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;
    }
.end annotation


# static fields
.field private static a:I = 0xff00001


# instance fields
.field private final b:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Landroid/view/accessibility/AccessibilityManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lio/flutter/view/AccessibilityViewEmbedder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Landroid/content/ContentResolver;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/flutter/view/AccessibilityBridge$h;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/flutter/view/AccessibilityBridge$f;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lio/flutter/view/AccessibilityBridge$h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/Integer;

.field private l:Ljava/lang/Integer;

.field private m:I

.field private n:Lio/flutter/view/AccessibilityBridge$h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Lio/flutter/view/AccessibilityBridge$h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:Lio/flutter/view/AccessibilityBridge$h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final q:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private t:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Z

.field private final v:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

.field private final w:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

.field private final x:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x13
    .end annotation
.end field

.field private final y:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/accessibility/AccessibilityManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/ContentResolver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v5, Lio/flutter/view/AccessibilityViewEmbedder;

    const/high16 v0, 0x10000

    invoke-direct {v5, p1, v0}, Lio/flutter/view/AccessibilityViewEmbedder;-><init>(Landroid/view/View;I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/flutter/view/AccessibilityBridge;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/accessibility/AccessibilityManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/ContentResolver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/flutter/view/AccessibilityViewEmbedder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->h:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->i:Ljava/util/Map;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lio/flutter/view/AccessibilityBridge;->m:I

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->q:Ljava/util/List;

    .line 7
    iput v0, p0, Lio/flutter/view/AccessibilityBridge;->r:I

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->s:Ljava/lang/Integer;

    .line 9
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge;->u:Z

    .line 10
    new-instance v1, Lio/flutter/view/AccessibilityBridge$a;

    invoke-direct {v1, p0}, Lio/flutter/view/AccessibilityBridge$a;-><init>(Lio/flutter/view/AccessibilityBridge;)V

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->v:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

    .line 11
    new-instance v1, Lio/flutter/view/AccessibilityBridge$b;

    invoke-direct {v1, p0}, Lio/flutter/view/AccessibilityBridge$b;-><init>(Lio/flutter/view/AccessibilityBridge;)V

    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->w:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 12
    new-instance v2, Lio/flutter/view/AccessibilityBridge$c;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lio/flutter/view/AccessibilityBridge$c;-><init>(Lio/flutter/view/AccessibilityBridge;Landroid/os/Handler;)V

    iput-object v2, p0, Lio/flutter/view/AccessibilityBridge;->y:Landroid/database/ContentObserver;

    .line 13
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->b:Landroid/view/View;

    .line 14
    iput-object p2, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    .line 15
    iput-object p3, p0, Lio/flutter/view/AccessibilityBridge;->d:Landroid/view/accessibility/AccessibilityManager;

    .line 16
    iput-object p4, p0, Lio/flutter/view/AccessibilityBridge;->g:Landroid/content/ContentResolver;

    .line 17
    iput-object p5, p0, Lio/flutter/view/AccessibilityBridge;->e:Lio/flutter/view/AccessibilityViewEmbedder;

    .line 18
    iput-object p6, p0, Lio/flutter/view/AccessibilityBridge;->f:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 19
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    invoke-interface {v1, p1}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    .line 20
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 21
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_0

    .line 22
    new-instance p2, Lio/flutter/view/AccessibilityBridge$d;

    invoke-direct {p2, p0, p3}, Lio/flutter/view/AccessibilityBridge$d;-><init>(Lio/flutter/view/AccessibilityBridge;Landroid/view/accessibility/AccessibilityManager;)V

    iput-object p2, p0, Lio/flutter/view/AccessibilityBridge;->x:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 23
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p5

    .line 24
    invoke-interface {p2, p5}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    .line 25
    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 26
    iput-object p2, p0, Lio/flutter/view/AccessibilityBridge;->x:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    :goto_0
    const/16 p2, 0x11

    if-lt p1, p2, :cond_1

    .line 27
    invoke-virtual {v2, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "transition_animation_scale"

    .line 28
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 29
    invoke-virtual {p4, p1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    if-eqz p6, :cond_2

    .line 30
    invoke-interface {p6, p0}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->attachAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V

    :cond_2
    return-void
.end method

.method private A(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->d:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityBridge;->x(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->B(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private B(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->d:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->b:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    return-void
.end method

.method private C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    iget v1, p0, Lio/flutter/view/AccessibilityBridge;->m:I

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->setAccessibilityFeatures(I)V

    return-void
.end method

.method private D(Lio/flutter/view/AccessibilityBridge$h;)V
    .locals 2
    .param p1    # Lio/flutter/view/AccessibilityBridge$h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lio/flutter/view/AccessibilityBridge;->x(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$h;->S(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, " "

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->B(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private E(I)V
    .locals 2

    const/16 v0, 0x800

    .line 1
    invoke-direct {p0, p1, v0}, Lio/flutter/view/AccessibilityBridge;->x(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->B(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method private F(Lio/flutter/view/AccessibilityBridge$h;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$h;->a(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->j:Lio/flutter/view/AccessibilityBridge$h;

    new-instance v1, Lio/flutter/view/b;

    invoke-direct {v1, p1}, Lio/flutter/view/b;-><init>(Lio/flutter/view/AccessibilityBridge$h;)V

    .line 2
    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge$h;->b(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/util/Predicate;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->j:Lio/flutter/view/AccessibilityBridge$h;

    sget-object v0, Lio/flutter/view/a;->a:Lio/flutter/view/a;

    .line 3
    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$h;->b(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/util/Predicate;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private I(Lio/flutter/view/AccessibilityBridge$h;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$h;->q(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$h;)Lio/flutter/view/AccessibilityBridge$h;

    .line 2
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$h;->c(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v1

    const/high16 v2, 0x10000

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge;->e:Lio/flutter/view/AccessibilityViewEmbedder;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lio/flutter/view/AccessibilityViewEmbedder;->platformViewOfNode(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge;->f:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 4
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$h;->c(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5
    invoke-interface {v3, v4}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->getPlatformViewById(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_0

    .line 6
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->k:Ljava/lang/Integer;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8
    invoke-direct {p0, v1, v2}, Lio/flutter/view/AccessibilityBridge;->A(II)V

    .line 9
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->k:Ljava/lang/Integer;

    .line 10
    :cond_0
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->j:Lio/flutter/view/AccessibilityBridge$h;

    if-ne v1, p1, :cond_1

    .line 11
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v1

    .line 12
    invoke-direct {p0, v1, v2}, Lio/flutter/view/AccessibilityBridge;->A(II)V

    .line 13
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->j:Lio/flutter/view/AccessibilityBridge$h;

    .line 14
    :cond_1
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->n:Lio/flutter/view/AccessibilityBridge$h;

    if-ne v1, p1, :cond_2

    .line 15
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->n:Lio/flutter/view/AccessibilityBridge$h;

    .line 16
    :cond_2
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->p:Lio/flutter/view/AccessibilityBridge$h;

    if-ne v1, p1, :cond_3

    .line 17
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->p:Lio/flutter/view/AccessibilityBridge$h;

    :cond_3
    return-void
.end method

.method static synthetic a(Lio/flutter/view/AccessibilityBridge;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lio/flutter/view/AccessibilityBridge;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityBridge;->A(II)V

    return-void
.end method

.method static synthetic c(Lio/flutter/view/AccessibilityBridge;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/flutter/view/AccessibilityBridge;->m:I

    return p0
.end method

.method static synthetic d(Lio/flutter/view/AccessibilityBridge;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/flutter/view/AccessibilityBridge;->m:I

    return p1
.end method

.method static synthetic e(Lio/flutter/view/AccessibilityBridge;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->C()V

    return-void
.end method

.method static synthetic f(Lio/flutter/view/AccessibilityBridge;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->y()V

    return-void
.end method

.method static synthetic g(Lio/flutter/view/AccessibilityBridge;II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityBridge;->x(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lio/flutter/view/AccessibilityBridge;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->B(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method static synthetic i(Lio/flutter/view/AccessibilityBridge;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/flutter/view/AccessibilityBridge;->u:Z

    return p0
.end method

.method static synthetic j(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge;->v:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

    return-object p0
.end method

.method static synthetic k(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    return-object p0
.end method

.method static synthetic l(Lio/flutter/view/AccessibilityBridge;I)Lio/flutter/view/AccessibilityBridge$h;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->s(I)Lio/flutter/view/AccessibilityBridge$h;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lio/flutter/view/AccessibilityBridge;I)Lio/flutter/view/AccessibilityBridge$f;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/flutter/view/AccessibilityBridge;->r(I)Lio/flutter/view/AccessibilityBridge$f;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge;->t:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    return-object p0
.end method

.method static synthetic o(Lio/flutter/view/AccessibilityBridge;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge;->d:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic p(Lio/flutter/view/AccessibilityBridge;)Landroid/content/ContentResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge;->g:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private q(ILjava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 5

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, p1, v0}, Lio/flutter/view/AccessibilityBridge;->x(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 9
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-lt v1, v0, :cond_4

    if-lt v2, v0, :cond_4

    .line 10
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    .line 12
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    return-object p1
.end method

.method private r(I)Lio/flutter/view/AccessibilityBridge$f;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/flutter/view/AccessibilityBridge$f;

    invoke-direct {v0}, Lio/flutter/view/AccessibilityBridge$f;-><init>()V

    .line 3
    invoke-static {v0, p1}, Lio/flutter/view/AccessibilityBridge$f;->h(Lio/flutter/view/AccessibilityBridge$f;I)I

    .line 4
    sget v1, Lio/flutter/view/AccessibilityBridge;->a:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge$f;->d(Lio/flutter/view/AccessibilityBridge$f;I)I

    .line 5
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private s(I)Lio/flutter/view/AccessibilityBridge$h;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$h;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/flutter/view/AccessibilityBridge$h;

    invoke-direct {v0, p0}, Lio/flutter/view/AccessibilityBridge$h;-><init>(Lio/flutter/view/AccessibilityBridge;)V

    .line 3
    invoke-static {v0, p1}, Lio/flutter/view/AccessibilityBridge$h;->f(Lio/flutter/view/AccessibilityBridge$h;I)I

    .line 4
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private t()Lio/flutter/view/AccessibilityBridge$h;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->h:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$h;

    return-object v0
.end method

.method private u(FF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->t()Lio/flutter/view/AccessibilityBridge$h;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    const/4 p1, 0x2

    const/4 p2, 0x0

    aput p2, v1, p1

    const/4 p1, 0x3

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, v1, p1

    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge$h;->y(Lio/flutter/view/AccessibilityBridge$h;[F)Lio/flutter/view/AccessibilityBridge$h;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->p:Lio/flutter/view/AccessibilityBridge$h;

    if-eq p1, p2, :cond_3

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result p2

    const/16 v0, 0x80

    .line 5
    invoke-direct {p0, p2, v0}, Lio/flutter/view/AccessibilityBridge;->A(II)V

    .line 6
    :cond_1
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->p:Lio/flutter/view/AccessibilityBridge$h;

    if-eqz p2, :cond_2

    .line 7
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result p2

    const/16 v0, 0x100

    invoke-direct {p0, p2, v0}, Lio/flutter/view/AccessibilityBridge;->A(II)V

    .line 8
    :cond_2
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->p:Lio/flutter/view/AccessibilityBridge$h;

    :cond_3
    return-void
.end method

.method static synthetic v(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$h;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic w(Lio/flutter/view/AccessibilityBridge$h;)Z
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->HAS_IMPLICIT_SCROLLING:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {p0, v0}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result p0

    return p0
.end method

.method private x(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->b:Landroid/view/View;

    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    return-object p2
.end method

.method private y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->p:Lio/flutter/view/AccessibilityBridge$h;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    const/16 v1, 0x100

    invoke-direct {p0, v0, v1}, Lio/flutter/view/AccessibilityBridge;->A(II)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->p:Lio/flutter/view/AccessibilityBridge$h;

    :cond_0
    return-void
.end method

.method private z(Lio/flutter/view/AccessibilityBridge$h;ILandroid/os/Bundle;Z)Z
    .locals 3
    .param p1    # Lio/flutter/view/AccessibilityBridge$h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x12
    .end annotation

    const-string v0, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    .line 1
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    .line 2
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 3
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    .line 5
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 6
    invoke-virtual {p1, p2, v0, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    return v1

    :cond_1
    if-nez p4, :cond_4

    .line 7
    sget-object p4, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p1, p4}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    .line 9
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 10
    invoke-virtual {p1, p2, p4, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    return v1

    :cond_2
    if-eqz p4, :cond_3

    .line 11
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p1, v0}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    .line 13
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 14
    invoke-virtual {p1, p2, v0, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    return v1

    :cond_3
    if-nez p4, :cond_4

    .line 15
    sget-object p4, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p1, p4}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    .line 17
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 18
    invoke-virtual {p1, p2, p4, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    return v1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method G(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 3
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->r(I)Lio/flutter/view/AccessibilityBridge$f;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge$f;->j(Lio/flutter/view/AccessibilityBridge$f;I)I

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    move-object v1, v2

    goto :goto_1

    .line 6
    :cond_0
    aget-object v1, p2, v1

    :goto_1
    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge$f;->f(Lio/flutter/view/AccessibilityBridge$f;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    aget-object v2, p2, v1

    :goto_2
    invoke-static {v0, v2}, Lio/flutter/view/AccessibilityBridge$f;->b(Lio/flutter/view/AccessibilityBridge$f;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

.method H(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 4
    invoke-direct {p0, v1}, Lio/flutter/view/AccessibilityBridge;->s(I)Lio/flutter/view/AccessibilityBridge$h;

    move-result-object v1

    .line 5
    invoke-static {v1, p1, p2}, Lio/flutter/view/AccessibilityBridge$h;->z(Lio/flutter/view/AccessibilityBridge$h;Ljava/nio/ByteBuffer;[Ljava/lang/String;)V

    .line 6
    sget-object v2, Lio/flutter/view/AccessibilityBridge$g;->IS_HIDDEN:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v1, v2}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    sget-object v2, Lio/flutter/view/AccessibilityBridge$g;->IS_FOCUSED:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v1, v2}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->n:Lio/flutter/view/AccessibilityBridge$h;

    .line 9
    :cond_2
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$h;->A(Lio/flutter/view/AccessibilityBridge$h;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 12
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->t()Lio/flutter/view/AccessibilityBridge$h;

    move-result-object p2

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    const/16 v4, 0x10

    new-array v4, v4, [F

    .line 14
    invoke-static {v4, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 15
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_5

    .line 16
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 17
    iget-object v6, p0, Lio/flutter/view/AccessibilityBridge;->s:Ljava/lang/Integer;

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 18
    invoke-static {p2, v2}, Lio/flutter/view/AccessibilityBridge$h;->B(Lio/flutter/view/AccessibilityBridge$h;Z)Z

    .line 19
    invoke-static {p2, v2}, Lio/flutter/view/AccessibilityBridge$h;->C(Lio/flutter/view/AccessibilityBridge$h;Z)Z

    .line 20
    :cond_4
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lio/flutter/view/AccessibilityBridge;->s:Ljava/lang/Integer;

    .line 21
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v3, v5, v6, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 22
    :cond_5
    invoke-static {p2, v4, p1, v3}, Lio/flutter/view/AccessibilityBridge$h;->D(Lio/flutter/view/AccessibilityBridge$h;[FLjava/util/Set;Z)V

    .line 23
    invoke-static {p2, v1}, Lio/flutter/view/AccessibilityBridge$h;->E(Lio/flutter/view/AccessibilityBridge$h;Ljava/util/List;)V

    .line 24
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v4, 0x0

    move-object v5, v4

    :cond_7
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/flutter/view/AccessibilityBridge$h;

    .line 25
    iget-object v7, p0, Lio/flutter/view/AccessibilityBridge;->q:Ljava/util/List;

    invoke-static {v6}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    move-object v5, v6

    goto :goto_1

    :cond_8
    if-nez v5, :cond_9

    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_9

    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lio/flutter/view/AccessibilityBridge$h;

    :cond_9
    if-eqz v5, :cond_a

    .line 28
    invoke-static {v5}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result p2

    iget v6, p0, Lio/flutter/view/AccessibilityBridge;->r:I

    if-eq p2, v6, :cond_a

    .line 29
    invoke-static {v5}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result p2

    iput p2, p0, Lio/flutter/view/AccessibilityBridge;->r:I

    .line 30
    invoke-direct {p0, v5}, Lio/flutter/view/AccessibilityBridge;->D(Lio/flutter/view/AccessibilityBridge$h;)V

    .line 31
    :cond_a
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->q:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 32
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/AccessibilityBridge$h;

    .line 33
    iget-object v5, p0, Lio/flutter/view/AccessibilityBridge;->q:Ljava/util/List;

    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 34
    :cond_b
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->h:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 35
    :cond_c
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 36
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/view/AccessibilityBridge$h;

    .line 38
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 39
    invoke-direct {p0, v1}, Lio/flutter/view/AccessibilityBridge;->I(Lio/flutter/view/AccessibilityBridge$h;)V

    .line 40
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 41
    :cond_d
    invoke-direct {p0, v3}, Lio/flutter/view/AccessibilityBridge;->E(I)V

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/flutter/view/AccessibilityBridge$h;

    .line 43
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->F(Lio/flutter/view/AccessibilityBridge$h;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 44
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    const/16 v1, 0x1000

    invoke-direct {p0, v0, v1}, Lio/flutter/view/AccessibilityBridge;->x(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 45
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->G(Lio/flutter/view/AccessibilityBridge$h;)F

    move-result v1

    .line 46
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->H(Lio/flutter/view/AccessibilityBridge$h;)F

    move-result v5

    .line 47
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->H(Lio/flutter/view/AccessibilityBridge$h;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    const v7, 0x4788b800    # 70000.0f

    const v8, 0x47c35000    # 100000.0f

    if-eqz v6, :cond_10

    cmpl-float v5, v1, v7

    if-lez v5, :cond_f

    const v1, 0x4788b800    # 70000.0f

    :cond_f
    const v5, 0x47c35000    # 100000.0f

    .line 48
    :cond_10
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->I(Lio/flutter/view/AccessibilityBridge$h;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-eqz v6, :cond_12

    add-float/2addr v5, v8

    const v6, -0x38774800    # -70000.0f

    cmpg-float v7, v1, v6

    if-gez v7, :cond_11

    const v1, -0x38774800    # -70000.0f

    :cond_11
    add-float/2addr v1, v8

    goto :goto_5

    .line 49
    :cond_12
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->I(Lio/flutter/view/AccessibilityBridge$h;)F

    move-result v6

    sub-float/2addr v5, v6

    .line 50
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->I(Lio/flutter/view/AccessibilityBridge$h;)F

    move-result v6

    sub-float/2addr v1, v6

    .line 51
    :goto_5
    sget-object v6, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p2, v6}, Lio/flutter/view/AccessibilityBridge$h;->J(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v6

    if-nez v6, :cond_15

    sget-object v6, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p2, v6}, Lio/flutter/view/AccessibilityBridge$h;->J(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_6

    .line 52
    :cond_13
    sget-object v6, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p2, v6}, Lio/flutter/view/AccessibilityBridge$h;->J(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v6

    if-nez v6, :cond_14

    sget-object v6, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {p2, v6}, Lio/flutter/view/AccessibilityBridge$h;->J(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v6

    if-eqz v6, :cond_16

    :cond_14
    float-to-int v1, v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    float-to-int v1, v5

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    goto :goto_7

    :cond_15
    :goto_6
    float-to-int v1, v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    float-to-int v1, v5

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 57
    :cond_16
    :goto_7
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->a(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v1

    if-lez v1, :cond_19

    .line 58
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->a(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 59
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->K(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 60
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->L(Lio/flutter/view/AccessibilityBridge$h;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :cond_17
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/flutter/view/AccessibilityBridge$h;

    .line 61
    sget-object v7, Lio/flutter/view/AccessibilityBridge$g;->IS_HIDDEN:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v6, v7}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v6

    if-nez v6, :cond_17

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 62
    :cond_18
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->K(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v1

    add-int/2addr v1, v5

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 63
    :cond_19
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->B(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 64
    :cond_1a
    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->IS_LIVE_REGION:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {p2, v0}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->M(Lio/flutter/view/AccessibilityBridge$h;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 65
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->E(I)V

    .line 66
    :cond_1b
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->j:Lio/flutter/view/AccessibilityBridge$h;

    if-eqz v0, :cond_1c

    .line 67
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v1

    if-ne v0, v1, :cond_1c

    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->IS_SELECTED:Lio/flutter/view/AccessibilityBridge$g;

    .line 68
    invoke-static {p2, v0}, Lio/flutter/view/AccessibilityBridge$h;->N(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 69
    invoke-static {p2, v0}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 70
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lio/flutter/view/AccessibilityBridge;->x(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->O(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->B(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 73
    :cond_1c
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->n:Lio/flutter/view/AccessibilityBridge$h;

    if-eqz v0, :cond_1e

    .line 74
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->o:Lio/flutter/view/AccessibilityBridge$h;

    if-eqz v0, :cond_1d

    .line 75
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->n:Lio/flutter/view/AccessibilityBridge$h;

    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v1

    if-eq v0, v1, :cond_1e

    .line 76
    :cond_1d
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->n:Lio/flutter/view/AccessibilityBridge$h;

    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->o:Lio/flutter/view/AccessibilityBridge$h;

    .line 77
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lio/flutter/view/AccessibilityBridge;->x(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 78
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->B(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_9

    .line 79
    :cond_1e
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->n:Lio/flutter/view/AccessibilityBridge$h;

    if-nez v0, :cond_1f

    .line 80
    iput-object v4, p0, Lio/flutter/view/AccessibilityBridge;->o:Lio/flutter/view/AccessibilityBridge$h;

    .line 81
    :cond_1f
    :goto_9
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->n:Lio/flutter/view/AccessibilityBridge$h;

    if-eqz v0, :cond_e

    .line 82
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v1

    if-ne v0, v1, :cond_e

    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$g;

    .line 83
    invoke-static {p2, v0}, Lio/flutter/view/AccessibilityBridge$h;->N(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 84
    invoke-static {p2, v0}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->j:Lio/flutter/view/AccessibilityBridge$h;

    if-eqz v0, :cond_20

    .line 85
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->n:Lio/flutter/view/AccessibilityBridge$h;

    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 86
    :cond_20
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->P(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_21

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->P(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_21
    move-object v0, v1

    .line 87
    :goto_a
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->m(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_22

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->m(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;

    move-result-object v1

    .line 88
    :cond_22
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v5

    invoke-direct {p0, v5, v0, v1}, Lio/flutter/view/AccessibilityBridge;->q(ILjava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 89
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->B(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 90
    :cond_23
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->Q(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->i(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v5

    if-ne v0, v5, :cond_24

    .line 91
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->R(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->j(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v5

    if-eq v0, v5, :cond_e

    .line 92
    :cond_24
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    const/16 v5, 0x2000

    .line 93
    invoke-direct {p0, v0, v5}, Lio/flutter/view/AccessibilityBridge;->x(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->i(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 96
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$h;->j(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 97
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 98
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->B(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/16 :goto_4

    :cond_25
    return-void
.end method

.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->e:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {v0, p1}, Lio/flutter/view/AccessibilityViewEmbedder;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 2
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->b:Landroid/view/View;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->h:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->b:Landroid/view/View;

    invoke-virtual {p1, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_1
    return-object p1

    .line 6
    :cond_2
    iget-object v3, p0, Lio/flutter/view/AccessibilityBridge;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/flutter/view/AccessibilityBridge$h;

    if-nez v3, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_3
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->c(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v4

    if-eq v4, v1, :cond_4

    .line 8
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->f:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    .line 9
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->c(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->getPlatformViewById(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object p1

    .line 10
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->d(Lio/flutter/view/AccessibilityBridge$h;)Landroid/graphics/Rect;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->e:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Lio/flutter/view/AccessibilityViewEmbedder;->getRootNode(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    iget-object v4, p0, Lio/flutter/view/AccessibilityBridge;->b:Landroid/view/View;

    .line 13
    invoke-static {v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 14
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_5

    const-string v7, ""

    .line 15
    invoke-virtual {v4, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setViewIdResourceName(Ljava/lang/String;)V

    .line 16
    :cond_5
    iget-object v7, p0, Lio/flutter/view/AccessibilityBridge;->b:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    const-string v7, "android.view.View"

    .line 17
    invoke-virtual {v4, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v7, p0, Lio/flutter/view/AccessibilityBridge;->b:Landroid/view/View;

    invoke-virtual {v4, v7, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 19
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->g(Lio/flutter/view/AccessibilityBridge$h;)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 20
    iget-object v7, p0, Lio/flutter/view/AccessibilityBridge;->n:Lio/flutter/view/AccessibilityBridge$h;

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    .line 21
    invoke-static {v7}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v7

    if-ne v7, p1, :cond_6

    const/4 v7, 0x1

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v4, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    .line 22
    :cond_7
    iget-object v7, p0, Lio/flutter/view/AccessibilityBridge;->j:Lio/flutter/view/AccessibilityBridge$h;

    if-eqz v7, :cond_9

    .line 23
    invoke-static {v7}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v7

    if-ne v7, p1, :cond_8

    const/4 v7, 0x1

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v4, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 24
    :cond_9
    sget-object v7, Lio/flutter/view/AccessibilityBridge$g;->IS_TEXT_FIELD:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v3, v7}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v9

    const/16 v10, 0x15

    if-eqz v9, :cond_12

    .line 25
    sget-object v9, Lio/flutter/view/AccessibilityBridge$g;->IS_OBSCURED:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v3, v9}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v9

    invoke-virtual {v4, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    .line 26
    sget-object v9, Lio/flutter/view/AccessibilityBridge$g;->IS_READ_ONLY:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v3, v9}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "android.widget.EditText"

    .line 27
    invoke-virtual {v4, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_a
    if-lt v5, v6, :cond_c

    .line 28
    invoke-static {v3, v9}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v9

    xor-int/2addr v9, v8

    invoke-virtual {v4, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    .line 29
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->i(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v9

    if-eq v9, v1, :cond_b

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->j(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v9

    if-eq v9, v1, :cond_b

    .line 30
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->i(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v1

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->j(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v9

    .line 31
    invoke-virtual {v4, v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    :cond_b
    if-le v5, v6, :cond_c

    .line 32
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->j:Lio/flutter/view/AccessibilityBridge$h;

    if-eqz v1, :cond_c

    .line 33
    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v1

    if-ne v1, p1, :cond_c

    .line 34
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    .line 35
    :cond_c
    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v1}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v1

    const/16 v9, 0x100

    if-eqz v1, :cond_d

    .line 36
    invoke-virtual {v4, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_d
    const/4 v1, 0x0

    .line 37
    :goto_2
    sget-object v11, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_CHARACTER:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v11}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v11

    const/16 v12, 0x200

    if-eqz v11, :cond_e

    .line 38
    invoke-virtual {v4, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    or-int/lit8 v1, v1, 0x1

    .line 39
    :cond_e
    sget-object v11, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_FORWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v11}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 40
    invoke-virtual {v4, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    or-int/lit8 v1, v1, 0x2

    .line 41
    :cond_f
    sget-object v9, Lio/flutter/view/AccessibilityBridge$Action;->MOVE_CURSOR_BACKWARD_BY_WORD:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v9}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 42
    invoke-virtual {v4, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    or-int/lit8 v1, v1, 0x2

    .line 43
    :cond_10
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    if-lt v5, v10, :cond_12

    .line 44
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->l(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v1

    if-ltz v1, :cond_12

    .line 45
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->m(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_3

    :cond_11
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->m(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 46
    :goto_3
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->o(Lio/flutter/view/AccessibilityBridge$h;)I

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->l(Lio/flutter/view/AccessibilityBridge$h;)I

    .line 47
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->o(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v9

    sub-int/2addr v1, v9

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->l(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v9

    add-int/2addr v1, v9

    .line 48
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    :cond_12
    if-le v5, v6, :cond_16

    .line 49
    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SET_SELECTION:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v1}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/high16 v1, 0x20000

    .line 50
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 51
    :cond_13
    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->COPY:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v1}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v1, 0x4000

    .line 52
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 53
    :cond_14
    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->CUT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v1}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 54
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 55
    :cond_15
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->PASTE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x8000

    .line 56
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 57
    :cond_16
    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->IS_BUTTON:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->IS_LINK:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    const-string v0, "android.widget.Button"

    .line 58
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 59
    :cond_18
    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->IS_IMAGE:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "android.widget.ImageView"

    .line 60
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_19
    if-le v5, v6, :cond_1a

    .line 61
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DISMISS:Lio/flutter/view/AccessibilityBridge$Action;

    .line 62
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 63
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    const/high16 v0, 0x100000

    .line 64
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 65
    :cond_1a
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->p(Lio/flutter/view/AccessibilityBridge$h;)Lio/flutter/view/AccessibilityBridge$h;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 66
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->b:Landroid/view/View;

    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->p(Lio/flutter/view/AccessibilityBridge$h;)Lio/flutter/view/AccessibilityBridge$h;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    goto :goto_4

    .line 67
    :cond_1b
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->b:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 68
    :goto_4
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->d(Lio/flutter/view/AccessibilityBridge$h;)Landroid/graphics/Rect;

    move-result-object v0

    .line 69
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->p(Lio/flutter/view/AccessibilityBridge$h;)Lio/flutter/view/AccessibilityBridge$h;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 70
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->p(Lio/flutter/view/AccessibilityBridge$h;)Lio/flutter/view/AccessibilityBridge$h;

    move-result-object v1

    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge$h;->d(Lio/flutter/view/AccessibilityBridge$h;)Landroid/graphics/Rect;

    move-result-object v1

    .line 71
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 72
    iget v11, v1, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {v9, v11, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 73
    invoke-virtual {v4, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    goto :goto_5

    .line 74
    :cond_1c
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 75
    :goto_5
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 76
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 77
    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->HAS_ENABLED_STATE:Lio/flutter/view/AccessibilityBridge$g;

    .line 78
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->IS_ENABLED:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_6

    :cond_1d
    const/4 v0, 0x0

    goto :goto_7

    :cond_1e
    :goto_6
    const/4 v0, 0x1

    .line 79
    :goto_7
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 80
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->TAP:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v0, 0x10

    if-lt v5, v10, :cond_1f

    .line 81
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->r(Lio/flutter/view/AccessibilityBridge$h;)Lio/flutter/view/AccessibilityBridge$f;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 82
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 83
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->r(Lio/flutter/view/AccessibilityBridge$h;)Lio/flutter/view/AccessibilityBridge$f;

    move-result-object v9

    invoke-static {v9}, Lio/flutter/view/AccessibilityBridge$f;->a(Lio/flutter/view/AccessibilityBridge$f;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v0, v9}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 85
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto :goto_8

    .line 86
    :cond_1f
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 87
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 88
    :cond_20
    :goto_8
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->LONG_PRESS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v0, 0x20

    if-lt v5, v10, :cond_21

    .line 89
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->s(Lio/flutter/view/AccessibilityBridge$h;)Lio/flutter/view/AccessibilityBridge$f;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 90
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 91
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->s(Lio/flutter/view/AccessibilityBridge$h;)Lio/flutter/view/AccessibilityBridge$f;

    move-result-object v9

    invoke-static {v9}, Lio/flutter/view/AccessibilityBridge$f;->a(Lio/flutter/view/AccessibilityBridge$f;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v0, v9}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 93
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_9

    .line 94
    :cond_21
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 95
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 96
    :cond_22
    :goto_9
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v1

    const/16 v9, 0x2000

    const/16 v11, 0x1000

    if-nez v1, :cond_23

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    .line 97
    invoke-static {v3, v1}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v1

    if-nez v1, :cond_23

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    .line 98
    invoke-static {v3, v1}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v1

    if-nez v1, :cond_23

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    .line 99
    invoke-static {v3, v1}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 100
    :cond_23
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 101
    sget-object v1, Lio/flutter/view/AccessibilityBridge$g;->HAS_IMPLICIT_SCROLLING:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v3, v1}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 102
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v1

    if-nez v1, :cond_26

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    .line 103
    invoke-static {v3, v1}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_a

    :cond_24
    if-le v5, v6, :cond_25

    .line 104
    invoke-direct {p0, v3}, Lio/flutter/view/AccessibilityBridge;->F(Lio/flutter/view/AccessibilityBridge$h;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 105
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->a(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v1

    .line 106
    invoke-static {v1, v2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v1

    .line 107
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    goto :goto_b

    :cond_25
    const-string v1, "android.widget.ScrollView"

    .line 108
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_26
    :goto_a
    const/16 v1, 0x13

    if-le v5, v1, :cond_27

    .line 109
    invoke-direct {p0, v3}, Lio/flutter/view/AccessibilityBridge;->F(Lio/flutter/view/AccessibilityBridge$h;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 110
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->a(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v1

    .line 111
    invoke-static {v2, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v1

    .line 112
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    goto :goto_b

    :cond_27
    const-string v1, "android.widget.HorizontalScrollView"

    .line 113
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 114
    :cond_28
    :goto_b
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    .line 115
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 116
    :cond_29
    invoke-virtual {v4, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 117
    :cond_2a
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    .line 118
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 119
    :cond_2b
    invoke-virtual {v4, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 120
    :cond_2c
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v1

    if-nez v1, :cond_2d

    sget-object v1, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v1}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_2d
    const-string v1, "android.widget.SeekBar"

    .line 121
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 122
    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 123
    invoke-virtual {v4, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 124
    :cond_2e
    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 125
    invoke-virtual {v4, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 126
    :cond_2f
    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->IS_LIVE_REGION:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    if-eqz v0, :cond_30

    if-le v5, v6, :cond_30

    .line 127
    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    .line 128
    :cond_30
    invoke-static {v3, v7}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 129
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->t(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 130
    :cond_31
    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->SCOPES_ROUTE:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 131
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->t(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 132
    :cond_32
    :goto_c
    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->HAS_CHECKED_STATE:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    .line 133
    sget-object v1, Lio/flutter/view/AccessibilityBridge$g;->HAS_TOGGLED_STATE:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v3, v1}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v1

    if-nez v0, :cond_33

    if-eqz v1, :cond_34

    :cond_33
    const/4 v2, 0x1

    .line 134
    :cond_34
    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    if-eqz v0, :cond_36

    .line 135
    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->IS_CHECKED:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 136
    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->IS_IN_MUTUALLY_EXCLUSIVE_GROUP:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "android.widget.RadioButton"

    .line 137
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_35
    const-string v0, "android.widget.CheckBox"

    .line 138
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_36
    if-eqz v1, :cond_37

    .line 139
    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->IS_TOGGLED:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const-string v0, "android.widget.Switch"

    .line 140
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 141
    :cond_37
    :goto_d
    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->IS_SELECTED:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    const/16 v0, 0x1c

    if-lt v5, v0, :cond_38

    .line 142
    sget-object v0, Lio/flutter/view/AccessibilityBridge$g;->IS_HEADER:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v3, v0}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    .line 143
    :cond_38
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->j:Lio/flutter/view/AccessibilityBridge$h;

    if-eqz v0, :cond_39

    .line 144
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    if-ne v0, p1, :cond_39

    const/16 p1, 0x80

    .line 145
    invoke-virtual {v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_e

    :cond_39
    const/16 p1, 0x40

    .line 146
    invoke-virtual {v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_e
    if-lt v5, v10, :cond_3a

    .line 147
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->u(Lio/flutter/view/AccessibilityBridge$h;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 148
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->u(Lio/flutter/view/AccessibilityBridge$h;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$f;

    .line 149
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 150
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$f;->c(Lio/flutter/view/AccessibilityBridge$f;)I

    move-result v2

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$f;->e(Lio/flutter/view/AccessibilityBridge$f;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 151
    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_f

    .line 152
    :cond_3a
    invoke-static {v3}, Lio/flutter/view/AccessibilityBridge$h;->v(Lio/flutter/view/AccessibilityBridge$h;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3b
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/view/AccessibilityBridge$h;

    .line 153
    sget-object v1, Lio/flutter/view/AccessibilityBridge$g;->IS_HIDDEN:Lio/flutter/view/AccessibilityBridge$g;

    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge$h;->h(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$g;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 154
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->b:Landroid/view/View;

    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    goto :goto_10

    :cond_3c
    return-object v4
.end method

.method public externalViewRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->e:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->e:Lio/flutter/view/AccessibilityViewEmbedder;

    invoke-virtual {p2, p1, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->getRecordFlutterId(Landroid/view/View;Landroid/view/accessibility/AccessibilityRecord;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/16 p3, 0x8

    const/4 v0, 0x0

    if-eq p2, p3, :cond_5

    const/16 p3, 0x80

    if-eq p2, p3, :cond_4

    const p3, 0x8000

    if-eq p2, p3, :cond_3

    const/high16 p1, 0x10000

    if-eq p2, p1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->l:Ljava/lang/Integer;

    .line 5
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->k:Ljava/lang/Integer;

    goto :goto_0

    .line 6
    :cond_3
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->k:Ljava/lang/Integer;

    .line 7
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->j:Lio/flutter/view/AccessibilityBridge$h;

    goto :goto_0

    .line 8
    :cond_4
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->p:Lio/flutter/view/AccessibilityBridge$h;

    goto :goto_0

    .line 9
    :cond_5
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->l:Ljava/lang/Integer;

    .line 10
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->n:Lio/flutter/view/AccessibilityBridge$h;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->n:Lio/flutter/view/AccessibilityBridge$h;

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/AccessibilityBridge;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->l:Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/AccessibilityBridge;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->j:Lio/flutter/view/AccessibilityBridge$h;

    if-eqz p1, :cond_3

    .line 6
    invoke-static {p1}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/AccessibilityBridge;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    iget-object p1, p0, Lio/flutter/view/AccessibilityBridge;->k:Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/flutter/view/AccessibilityBridge;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->d:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->d:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method public onAccessibilityHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->d:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->t()Lio/flutter/view/AccessibilityBridge$h;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v2, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const/4 v3, 0x2

    const/4 v5, 0x0

    aput v5, v2, v3

    const/4 v3, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v3

    invoke-static {v0, v2}, Lio/flutter/view/AccessibilityBridge$h;->y(Lio/flutter/view/AccessibilityBridge$h;[F)Lio/flutter/view/AccessibilityBridge$h;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$h;->c(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 5
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->e:Lio/flutter/view/AccessibilityViewEmbedder;

    .line 6
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    .line 7
    invoke-virtual {v1, v0, p1}, Lio/flutter/view/AccessibilityViewEmbedder;->onAccessibilityHoverEvent(ILandroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_5

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_4

    .line 11
    invoke-direct {p0}, Lio/flutter/view/AccessibilityBridge;->y()V

    goto :goto_1

    .line 12
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected accessibility hover event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "flutter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 13
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lio/flutter/view/AccessibilityBridge;->u(FF)V

    :goto_1
    return v4
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 7
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v0, 0x10000

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->e:Lio/flutter/view/AccessibilityViewEmbedder;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/view/AccessibilityViewEmbedder;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p3, 0x80

    if-ne p2, p3, :cond_0

    .line 3
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->k:Ljava/lang/Integer;

    :cond_0
    return p1

    .line 4
    :cond_1
    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/view/AccessibilityBridge$h;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    return v3

    :cond_2
    const/4 v4, 0x4

    const/16 v5, 0x12

    const/4 v6, 0x1

    sparse-switch p2, :sswitch_data_0

    .line 5
    sget p3, Lio/flutter/view/AccessibilityBridge;->a:I

    sub-int/2addr p2, p3

    .line 6
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->i:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/flutter/view/AccessibilityBridge$f;

    if-eqz p2, :cond_11

    .line 7
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->CUSTOM_ACTION:Lio/flutter/view/AccessibilityBridge$Action;

    .line 8
    invoke-static {p2}, Lio/flutter/view/AccessibilityBridge$f;->g(Lio/flutter/view/AccessibilityBridge$f;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 9
    invoke-virtual {p3, p1, v0, p2}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    return v6

    .line 10
    :sswitch_0
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->SHOW_ON_SCREEN:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    .line 11
    :sswitch_1
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->DISMISS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    .line 12
    :sswitch_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v5, :cond_3

    return v3

    .line 13
    :cond_3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ACTION_ARGUMENT_SELECTION_END_INT"

    const-string v1, "ACTION_ARGUMENT_SELECTION_START_INT"

    if-eqz p3, :cond_4

    .line 14
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 15
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    const-string v4, "extent"

    const-string v5, "base"

    if-eqz v3, :cond_5

    .line 16
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 17
    invoke-interface {p2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 19
    invoke-interface {p2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_5
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$h;->j(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$h;->j(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :goto_0
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object v0, Lio/flutter/view/AccessibilityBridge$Action;->SET_SELECTION:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p3, p1, v0, p2}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;Ljava/lang/Object;)V

    return v6

    .line 23
    :sswitch_3
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->CUT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    .line 24
    :sswitch_4
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->PASTE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    .line 25
    :sswitch_5
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->COPY:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    .line 26
    :sswitch_6
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_DOWN:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 27
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    invoke-virtual {p3, p1, p2}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    goto :goto_1

    .line 28
    :cond_6
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_RIGHT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 29
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    invoke-virtual {p3, p1, p2}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    goto :goto_1

    .line 30
    :cond_7
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 31
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$h;->x(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lio/flutter/view/AccessibilityBridge$h;->n(Lio/flutter/view/AccessibilityBridge$h;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1, v4}, Lio/flutter/view/AccessibilityBridge;->A(II)V

    .line 33
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    invoke-virtual {p3, p1, p2}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    :goto_1
    return v6

    :cond_8
    return v3

    .line 34
    :sswitch_7
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_UP:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 35
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    invoke-virtual {p3, p1, p2}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    goto :goto_2

    .line 36
    :cond_9
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->SCROLL_LEFT:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 37
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    invoke-virtual {p3, p1, p2}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    goto :goto_2

    .line 38
    :cond_a
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 39
    invoke-static {v2}, Lio/flutter/view/AccessibilityBridge$h;->w(Lio/flutter/view/AccessibilityBridge$h;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lio/flutter/view/AccessibilityBridge$h;->n(Lio/flutter/view/AccessibilityBridge$h;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1, v4}, Lio/flutter/view/AccessibilityBridge;->A(II)V

    .line 41
    iget-object p3, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    invoke-virtual {p3, p1, p2}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    :goto_2
    return v6

    :cond_b
    return v3

    .line 42
    :sswitch_8
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v5, :cond_c

    return v3

    .line 43
    :cond_c
    invoke-direct {p0, v2, p1, p3, v3}, Lio/flutter/view/AccessibilityBridge;->z(Lio/flutter/view/AccessibilityBridge$h;ILandroid/os/Bundle;Z)Z

    move-result p1

    return p1

    .line 44
    :sswitch_9
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v5, :cond_d

    return v3

    .line 45
    :cond_d
    invoke-direct {p0, v2, p1, p3, v6}, Lio/flutter/view/AccessibilityBridge;->z(Lio/flutter/view/AccessibilityBridge$h;ILandroid/os/Bundle;Z)Z

    move-result p1

    return p1

    .line 46
    :sswitch_a
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->DID_LOSE_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    .line 47
    invoke-direct {p0, p1, v0}, Lio/flutter/view/AccessibilityBridge;->A(II)V

    .line 48
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->j:Lio/flutter/view/AccessibilityBridge$h;

    .line 49
    iput-object v1, p0, Lio/flutter/view/AccessibilityBridge;->k:Ljava/lang/Integer;

    return v6

    .line 50
    :sswitch_b
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->DID_GAIN_ACCESSIBILITY_FOCUS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    const p2, 0x8000

    .line 51
    invoke-direct {p0, p1, p2}, Lio/flutter/view/AccessibilityBridge;->A(II)V

    .line 52
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->j:Lio/flutter/view/AccessibilityBridge$h;

    if-nez p2, :cond_e

    .line 53
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 54
    :cond_e
    iput-object v2, p0, Lio/flutter/view/AccessibilityBridge;->j:Lio/flutter/view/AccessibilityBridge$h;

    .line 55
    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->INCREASE:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p2

    if-nez p2, :cond_f

    sget-object p2, Lio/flutter/view/AccessibilityBridge$Action;->DECREASE:Lio/flutter/view/AccessibilityBridge$Action;

    .line 56
    invoke-static {v2, p2}, Lio/flutter/view/AccessibilityBridge$h;->k(Lio/flutter/view/AccessibilityBridge$h;Lio/flutter/view/AccessibilityBridge$Action;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 57
    :cond_f
    invoke-direct {p0, p1, v4}, Lio/flutter/view/AccessibilityBridge;->A(II)V

    :cond_10
    return v6

    .line 58
    :sswitch_c
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->LONG_PRESS:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    .line 59
    :sswitch_d
    iget-object p2, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    sget-object p3, Lio/flutter/view/AccessibilityBridge$Action;->TAP:Lio/flutter/view/AccessibilityBridge$Action;

    invoke-virtual {p2, p1, p3}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->dispatchSemanticsAction(ILio/flutter/view/AccessibilityBridge$Action;)V

    return v6

    :cond_11
    return v3

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_d
        0x20 -> :sswitch_c
        0x40 -> :sswitch_b
        0x80 -> :sswitch_a
        0x100 -> :sswitch_9
        0x200 -> :sswitch_8
        0x1000 -> :sswitch_7
        0x2000 -> :sswitch_6
        0x4000 -> :sswitch_5
        0x8000 -> :sswitch_4
        0x10000 -> :sswitch_3
        0x20000 -> :sswitch_2
        0x100000 -> :sswitch_1
        0x1020036 -> :sswitch_0
    .end sparse-switch
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/flutter/view/AccessibilityBridge;->u:Z

    .line 2
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->f:Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;->detachAccessibiltyBridge()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lio/flutter/view/AccessibilityBridge;->setOnAccessibilityChangeListener(Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;)V

    .line 5
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->d:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->w:Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 7
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->d:Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->x:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 8
    :cond_1
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->g:Landroid/content/ContentResolver;

    iget-object v2, p0, Lio/flutter/view/AccessibilityBridge;->y:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 9
    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge;->c:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->setAccessibilityMessageHandler(Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge;->j:Lio/flutter/view/AccessibilityBridge$h;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge$h;->e(Lio/flutter/view/AccessibilityBridge$h;)I

    move-result v0

    const/high16 v1, 0x10000

    .line 4
    invoke-direct {p0, v0, v1}, Lio/flutter/view/AccessibilityBridge;->A(II)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->j:Lio/flutter/view/AccessibilityBridge$h;

    .line 6
    iput-object v0, p0, Lio/flutter/view/AccessibilityBridge;->p:Lio/flutter/view/AccessibilityBridge$h;

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lio/flutter/view/AccessibilityBridge;->E(I)V

    return-void
.end method

.method public setOnAccessibilityChangeListener(Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;)V
    .locals 0
    .param p1    # Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge;->t:Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    return-void
.end method
