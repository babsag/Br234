.class public final Lkotlinx/coroutines/flow/SharingStarted$Companion;
.super Ljava/lang/Object;
.source "SharingStarted.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/flow/SharingStarted;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000bR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/SharingStarted$Companion;",
        "",
        "()V",
        "Eagerly",
        "Lkotlinx/coroutines/flow/SharingStarted;",
        "getEagerly",
        "()Lkotlinx/coroutines/flow/SharingStarted;",
        "Lazily",
        "getLazily",
        "WhileSubscribed",
        "stopTimeoutMillis",
        "",
        "replayExpirationMillis",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

.field private static final b:Lkotlinx/coroutines/flow/SharingStarted;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lkotlinx/coroutines/flow/SharingStarted;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/p;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/p;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->b:Lkotlinx/coroutines/flow/SharingStarted;

    .line 2
    new-instance v0, Lkotlinx/coroutines/flow/q;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/q;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/SharingStarted;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    const-wide p3, 0x7fffffffffffffffL

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed(JJ)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final WhileSubscribed(JJ)Lkotlinx/coroutines/flow/SharingStarted;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/r;

    invoke-direct {v0, p1, p2, p3, p4}, Lkotlinx/coroutines/flow/r;-><init>(JJ)V

    return-object v0
.end method

.method public final getEagerly()Lkotlinx/coroutines/flow/SharingStarted;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->b:Lkotlinx/coroutines/flow/SharingStarted;

    return-object v0
.end method

.method public final getLazily()Lkotlinx/coroutines/flow/SharingStarted;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    return-object v0
.end method