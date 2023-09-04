.class public final enum Lcaf/io/C;
.super Ljava/lang/Enum;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcaf/io/C;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcaf/io/C;

.field public static final enum b:Lcaf/io/C;

.field public static final enum c:Lcaf/io/C;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcaf/io/C;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcaf/io/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcaf/io/C;->a:Lcaf/io/C;

    .line 2
    new-instance v0, Lcaf/io/C;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcaf/io/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcaf/io/C;->b:Lcaf/io/C;

    .line 3
    new-instance v0, Lcaf/io/C;

    const-string v1, "SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcaf/io/C;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcaf/io/C;->c:Lcaf/io/C;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
