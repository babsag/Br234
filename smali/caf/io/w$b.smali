.class public final enum Lcaf/io/w$b;
.super Ljava/lang/Enum;
.source "FaceValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcaf/io/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcaf/io/w$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcaf/io/w$b;

.field public static final enum c:Lcaf/io/w$b;


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcaf/io/w$b;

    const-wide v1, -0x1243da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcaf/io/w$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcaf/io/w$b;->b:Lcaf/io/w$b;

    .line 2
    new-instance v0, Lcaf/io/w$b;

    const-wide v1, -0x13a3da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcaf/io/w$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcaf/io/w$b;->c:Lcaf/io/w$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcaf/io/w$b;->a:I

    return-void
.end method
