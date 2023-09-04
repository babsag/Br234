.class final enum Lorg/apache/commons/imaging/palette/b;
.super Ljava/lang/Enum;
.source "ColorComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/palette/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/palette/b;

.field public static final enum ALPHA:Lorg/apache/commons/imaging/palette/b;

.field public static final enum BLUE:Lorg/apache/commons/imaging/palette/b;

.field public static final enum GREEN:Lorg/apache/commons/imaging/palette/b;

.field public static final enum RED:Lorg/apache/commons/imaging/palette/b;


# instance fields
.field private final shift:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/apache/commons/imaging/palette/b;

    const-string v1, "ALPHA"

    const/4 v2, 0x0

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/imaging/palette/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/imaging/palette/b;->ALPHA:Lorg/apache/commons/imaging/palette/b;

    .line 2
    new-instance v1, Lorg/apache/commons/imaging/palette/b;

    const-string v3, "RED"

    const/4 v4, 0x1

    const/16 v5, 0x10

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/commons/imaging/palette/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/commons/imaging/palette/b;->RED:Lorg/apache/commons/imaging/palette/b;

    .line 3
    new-instance v3, Lorg/apache/commons/imaging/palette/b;

    const-string v5, "GREEN"

    const/4 v6, 0x2

    const/16 v7, 0x8

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/commons/imaging/palette/b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/commons/imaging/palette/b;->GREEN:Lorg/apache/commons/imaging/palette/b;

    .line 4
    new-instance v5, Lorg/apache/commons/imaging/palette/b;

    const-string v7, "BLUE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lorg/apache/commons/imaging/palette/b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/commons/imaging/palette/b;->BLUE:Lorg/apache/commons/imaging/palette/b;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/commons/imaging/palette/b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lorg/apache/commons/imaging/palette/b;->$VALUES:[Lorg/apache/commons/imaging/palette/b;

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
    iput p3, p0, Lorg/apache/commons/imaging/palette/b;->shift:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/palette/b;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/commons/imaging/palette/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/palette/b;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/palette/b;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/imaging/palette/b;->$VALUES:[Lorg/apache/commons/imaging/palette/b;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/palette/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/palette/b;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/imaging/palette/b;->shift:I

    shr-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method
