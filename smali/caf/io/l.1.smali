.class public final enum Lcaf/io/l;
.super Ljava/lang/Enum;
.source "CaptureMode.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcaf/io/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcaf/io/l;

.field public static final enum c:Lcaf/io/l;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "captureMode"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcaf/io/l;

    const-string v1, "MANUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcaf/io/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcaf/io/l;->b:Lcaf/io/l;

    .line 2
    new-instance v0, Lcaf/io/l;

    const-string v1, "AUTO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcaf/io/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcaf/io/l;->c:Lcaf/io/l;

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

    iput-object p3, p0, Lcaf/io/l;->a:Ljava/lang/String;

    return-void
.end method
