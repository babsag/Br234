.class public final enum Lcaf/io/e0;
.super Ljava/lang/Enum;
.source "Stage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcaf/io/e0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcaf/io/e0;

.field public static final enum b:Lcaf/io/e0;

.field public static final enum c:Lcaf/io/e0;

.field private static final synthetic d:[Lcaf/io/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcaf/io/e0;

    const-string v1, "PROD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcaf/io/e0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcaf/io/e0;->a:Lcaf/io/e0;

    .line 2
    new-instance v1, Lcaf/io/e0;

    const-string v3, "BETA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcaf/io/e0;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcaf/io/e0;->b:Lcaf/io/e0;

    .line 3
    new-instance v3, Lcaf/io/e0;

    const-string v5, "DEV"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcaf/io/e0;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcaf/io/e0;->c:Lcaf/io/e0;

    const/4 v5, 0x3

    new-array v5, v5, [Lcaf/io/e0;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcaf/io/e0;->d:[Lcaf/io/e0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
