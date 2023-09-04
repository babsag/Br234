.class final enum Lcaf/io/L$b;
.super Ljava/lang/Enum;
.source "PassiveFaceLivenessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcaf/io/L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcaf/io/L$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcaf/io/L$b;

.field public static final enum b:Lcaf/io/L$b;

.field public static final enum c:Lcaf/io/L$b;

.field public static final enum d:Lcaf/io/L$b;

.field public static final enum e:Lcaf/io/L$b;

.field public static final enum f:Lcaf/io/L$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcaf/io/L$b;

    const-wide v1, -0x27233da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcaf/io/L$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcaf/io/L$b;->a:Lcaf/io/L$b;

    new-instance v0, Lcaf/io/L$b;

    const-wide v1, -0x272b3da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcaf/io/L$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcaf/io/L$b;->b:Lcaf/io/L$b;

    new-instance v0, Lcaf/io/L$b;

    const-wide v1, -0x27363da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcaf/io/L$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcaf/io/L$b;->c:Lcaf/io/L$b;

    new-instance v0, Lcaf/io/L$b;

    const-wide v1, -0x27463da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcaf/io/L$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcaf/io/L$b;->d:Lcaf/io/L$b;

    new-instance v0, Lcaf/io/L$b;

    const-wide v1, -0x27503da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcaf/io/L$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcaf/io/L$b;->e:Lcaf/io/L$b;

    new-instance v0, Lcaf/io/L$b;

    const-wide v1, -0x27603da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcaf/io/L$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcaf/io/L$b;->f:Lcaf/io/L$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
