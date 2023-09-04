.class public Lbr/com/topaz/w/a;
.super Lbr/com/topaz/s0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr/com/topaz/w/a$b;
    }
.end annotation


# static fields
.field private static e:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private b:Lbr/com/topaz/w/d;

.field private c:Lbr/com/topaz/w/a$b;

.field private d:Lbr/com/topaz/w/d$c;


# direct methods
.method public constructor <init>(Lbr/com/topaz/s/a;Lbr/com/topaz/w/d;Lbr/com/topaz/w/a$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/s0/a;-><init>(Lbr/com/topaz/s/a;)V

    iput-object p2, p0, Lbr/com/topaz/w/a;->b:Lbr/com/topaz/w/d;

    iput-object p3, p0, Lbr/com/topaz/w/a;->c:Lbr/com/topaz/w/a$b;

    sget-object p1, Lbr/com/topaz/w/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object p1, Lbr/com/topaz/w/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    :cond_0
    return-void
.end method

.method static synthetic a(Lbr/com/topaz/w/a;Lbr/com/topaz/w/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lbr/com/topaz/w/a;->a(Lbr/com/topaz/w/f;)V

    return-void
.end method

.method private a(Lbr/com/topaz/w/f;)V
    .locals 2

    sget-object v0, Lbr/com/topaz/w/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Lbr/com/topaz/w/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lbr/com/topaz/w/a;->c:Lbr/com/topaz/w/a$b;

    invoke-interface {v0, p1}, Lbr/com/topaz/w/a$b;->a(Lbr/com/topaz/w/f;)V

    :cond_0
    return-void
.end method

.method static synthetic c()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lbr/com/topaz/w/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lbr/com/topaz/w/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lbr/com/topaz/w/a$a;

    invoke-direct {v0, p0}, Lbr/com/topaz/w/a$a;-><init>(Lbr/com/topaz/w/a;)V

    iput-object v0, p0, Lbr/com/topaz/w/a;->d:Lbr/com/topaz/w/d$c;

    iget-object v1, p0, Lbr/com/topaz/w/a;->b:Lbr/com/topaz/w/d;

    invoke-virtual {v1, v0}, Lbr/com/topaz/w/d;->a(Lbr/com/topaz/w/d$c;)V

    iget-object v0, p0, Lbr/com/topaz/w/a;->b:Lbr/com/topaz/w/d;

    invoke-virtual {v0}, Lbr/com/topaz/w/d;->c()V

    :cond_0
    return-void
.end method
