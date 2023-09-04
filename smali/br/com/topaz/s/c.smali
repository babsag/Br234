.class public Lbr/com/topaz/s/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbr/com/topaz/s/a;


# static fields
.field private static b:Lbr/com/topaz/s/c;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbr/com/topaz/s/c;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lbr/com/topaz/s/a;
    .locals 1

    sget-object v0, Lbr/com/topaz/s/c;->b:Lbr/com/topaz/s/c;

    if-nez v0, :cond_0

    new-instance v0, Lbr/com/topaz/s/c;

    invoke-direct {v0}, Lbr/com/topaz/s/c;-><init>()V

    sput-object v0, Lbr/com/topaz/s/c;->b:Lbr/com/topaz/s/c;

    :cond_0
    sget-object v0, Lbr/com/topaz/s/c;->b:Lbr/com/topaz/s/c;

    return-object v0
.end method


# virtual methods
.method public a(Lbr/com/topaz/s0/b;)V
    .locals 2

    iget-object v0, p0, Lbr/com/topaz/s/c;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lbr/com/topaz/s/c$a;

    invoke-direct {v1, p0, p1}, Lbr/com/topaz/s/c$a;-><init>(Lbr/com/topaz/s/c;Lbr/com/topaz/s0/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
