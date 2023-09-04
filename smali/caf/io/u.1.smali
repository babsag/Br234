.class public final enum Lcaf/io/u;
.super Ljava/lang/Enum;
.source "EventType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcaf/io/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcaf/io/u;

.field public static final enum c:Lcaf/io/u;

.field public static final enum d:Lcaf/io/u;

.field public static final enum e:Lcaf/io/u;

.field public static final enum f:Lcaf/io/u;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcaf/io/u;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcaf/io/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcaf/io/u;->b:Lcaf/io/u;

    new-instance v0, Lcaf/io/u;

    const-string v1, "INFO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcaf/io/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcaf/io/u;->c:Lcaf/io/u;

    new-instance v0, Lcaf/io/u;

    const-string v1, "WARNING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcaf/io/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcaf/io/u;->d:Lcaf/io/u;

    new-instance v0, Lcaf/io/u;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcaf/io/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcaf/io/u;->e:Lcaf/io/u;

    new-instance v0, Lcaf/io/u;

    const-string v1, "OTHER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcaf/io/u;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcaf/io/u;->f:Lcaf/io/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcaf/io/u;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcaf/io/u;->a:Ljava/lang/String;

    return-object v0
.end method
