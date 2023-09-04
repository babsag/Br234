.class public Lbr/com/topaz/heartbeat/sosus/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final g:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lbr/com/topaz/o0/g;

.field private c:Ljava/lang/String;

.field private final d:Lbr/com/topaz/k0/a;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbr/com/topaz/o0/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lbr/com/topaz/heartbeat/sosus/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lbr/com/topaz/heartbeat/sosus/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/k0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/sosus/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/heartbeat/sosus/a;->d:Lbr/com/topaz/k0/a;

    const-string p1, ""

    iput-object p1, p0, Lbr/com/topaz/heartbeat/sosus/a;->c:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lbr/com/topaz/heartbeat/sosus/a;->e:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/app/Activity;Lbr/com/topaz/o0/a;)V
    .locals 1

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lbr/com/topaz/heartbeat/sosus/a;->a(Ljava/lang/String;Landroid/view/ViewGroup;Lbr/com/topaz/o0/a;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/view/ViewGroup;Lbr/com/topaz/o0/a;I)V
    .locals 4

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/sosus/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 p4, p4, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lbr/com/topaz/heartbeat/sosus/a;->b:Lbr/com/topaz/o0/g;

    invoke-virtual {v3}, Lbr/com/topaz/o0/g;->e()I

    move-result v3

    if-ge p4, v3, :cond_2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v2, p3, p4}, Lbr/com/topaz/heartbeat/sosus/a;->a(Ljava/lang/String;Landroid/view/ViewGroup;Lbr/com/topaz/o0/a;I)V

    goto :goto_1

    :cond_1
    instance-of v3, v2, Landroid/widget/EditText;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/widget/EditText;

    invoke-direct {p0, p1, v2, p3}, Lbr/com/topaz/heartbeat/sosus/a;->a(Ljava/lang/String;Landroid/widget/EditText;Lbr/com/topaz/o0/a;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/EditText;Lbr/com/topaz/o0/a;)V
    .locals 2

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/sosus/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p3, v0}, Lbr/com/topaz/o0/a;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-direct {p0, p1, v0, p2}, Lbr/com/topaz/heartbeat/sosus/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 2

    new-instance v0, Lbr/com/topaz/o0/h;

    iget-object v1, p0, Lbr/com/topaz/heartbeat/sosus/a;->d:Lbr/com/topaz/k0/a;

    invoke-direct {v0, p1, p2, p3, v1}, Lbr/com/topaz/o0/h;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;Lbr/com/topaz/k0/a;)V

    iget-object p1, p0, Lbr/com/topaz/heartbeat/sosus/a;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected static b()Landroid/app/Activity;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    const-string v3, "mActivities"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "paused"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_7
    return-object v0
.end method

.method private c()Z
    .locals 2

    sget-object v0, Lbr/com/topaz/heartbeat/sosus/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    iput-object v0, p0, Lbr/com/topaz/heartbeat/sosus/a;->c:Ljava/lang/String;

    sget-object v0, Lbr/com/topaz/heartbeat/sosus/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lbr/com/topaz/heartbeat/sosus/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbr/com/topaz/o0/h;

    invoke-virtual {v1}, Lbr/com/topaz/o0/h;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbr/com/topaz/heartbeat/sosus/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public a(Lbr/com/topaz/o0/g;)I
    .locals 7

    sget-object v0, Lbr/com/topaz/heartbeat/sosus/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    invoke-direct {p0}, Lbr/com/topaz/heartbeat/sosus/a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x4

    return p1

    :cond_1
    iput-object p1, p0, Lbr/com/topaz/heartbeat/sosus/a;->b:Lbr/com/topaz/o0/g;

    invoke-static {}, Lbr/com/topaz/heartbeat/sosus/a;->b()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v3

    :cond_2
    iget-object v3, p0, Lbr/com/topaz/heartbeat/sosus/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x2

    if-eqz v3, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v6

    :cond_3
    iput-object v5, p0, Lbr/com/topaz/heartbeat/sosus/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lbr/com/topaz/o0/g;->a(Ljava/lang/String;)Lbr/com/topaz/o0/a;

    move-result-object p1

    invoke-virtual {p1}, Lbr/com/topaz/o0/a;->a()I

    move-result v3

    if-ne v3, v6, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v6

    :cond_4
    invoke-direct {p0, v5, v2, p1}, Lbr/com/topaz/heartbeat/sosus/a;->a(Ljava/lang/String;Landroid/app/Activity;Lbr/com/topaz/o0/a;)V

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1

    :cond_5
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v3
.end method

.method protected a()V
    .locals 2

    sget-object v0, Lbr/com/topaz/heartbeat/sosus/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lbr/com/topaz/heartbeat/sosus/a;->c()Z

    return-void
.end method
