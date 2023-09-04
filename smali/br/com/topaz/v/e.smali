.class public final enum Lbr/com/topaz/v/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbr/com/topaz/v/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lbr/com/topaz/v/e;

.field public static final enum c:Lbr/com/topaz/v/e;

.field private static final synthetic d:[Lbr/com/topaz/v/e;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lbr/com/topaz/v/e;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x0

    const-string v3, "timeout"

    invoke-direct {v0, v1, v2, v3}, Lbr/com/topaz/v/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbr/com/topaz/v/e;->b:Lbr/com/topaz/v/e;

    new-instance v1, Lbr/com/topaz/v/e;

    const-string v3, "DATA_OPTION"

    const/4 v4, 0x1

    const-string v5, "dataOption"

    invoke-direct {v1, v3, v4, v5}, Lbr/com/topaz/v/e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbr/com/topaz/v/e;->c:Lbr/com/topaz/v/e;

    const/4 v3, 0x2

    new-array v3, v3, [Lbr/com/topaz/v/e;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lbr/com/topaz/v/e;->d:[Lbr/com/topaz/v/e;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lbr/com/topaz/v/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbr/com/topaz/v/e;
    .locals 1

    const-class v0, Lbr/com/topaz/v/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbr/com/topaz/v/e;

    return-object p0
.end method

.method public static values()[Lbr/com/topaz/v/e;
    .locals 1

    sget-object v0, Lbr/com/topaz/v/e;->d:[Lbr/com/topaz/v/e;

    invoke-virtual {v0}, [Lbr/com/topaz/v/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbr/com/topaz/v/e;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbr/com/topaz/v/e;->a:Ljava/lang/String;

    return-object v0
.end method
