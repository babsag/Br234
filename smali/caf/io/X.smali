.class public final enum Lcaf/io/X;
.super Ljava/lang/Enum;
.source "SensorValidatorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcaf/io/X;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcaf/io/X;

.field public static final enum b:Lcaf/io/X;

.field private static final synthetic c:[Lcaf/io/X;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcaf/io/X;

    const-string v1, "ABSOLUTE_VALUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcaf/io/X;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcaf/io/X;->a:Lcaf/io/X;

    new-instance v1, Lcaf/io/X;

    const-string v3, "LAST_TWO_COMPARISON"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcaf/io/X;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcaf/io/X;->b:Lcaf/io/X;

    const/4 v3, 0x2

    new-array v3, v3, [Lcaf/io/X;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcaf/io/X;->c:[Lcaf/io/X;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
