.class public final enum Lbr/com/topaz/v/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbr/com/topaz/v/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lbr/com/topaz/v/c;

.field public static final enum c:Lbr/com/topaz/v/c;

.field public static final enum d:Lbr/com/topaz/v/c;

.field private static final synthetic e:[Lbr/com/topaz/v/c;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lbr/com/topaz/v/c;

    const-string v1, "ALL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lbr/com/topaz/v/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbr/com/topaz/v/c;->b:Lbr/com/topaz/v/c;

    new-instance v1, Lbr/com/topaz/v/c;

    const-string v4, "WIFI"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lbr/com/topaz/v/c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbr/com/topaz/v/c;->c:Lbr/com/topaz/v/c;

    new-instance v4, Lbr/com/topaz/v/c;

    const-string v6, "GPS"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lbr/com/topaz/v/c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lbr/com/topaz/v/c;->d:Lbr/com/topaz/v/c;

    new-array v6, v7, [Lbr/com/topaz/v/c;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lbr/com/topaz/v/c;->e:[Lbr/com/topaz/v/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbr/com/topaz/v/c;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbr/com/topaz/v/c;
    .locals 1

    const-class v0, Lbr/com/topaz/v/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbr/com/topaz/v/c;

    return-object p0
.end method

.method public static values()[Lbr/com/topaz/v/c;
    .locals 1

    sget-object v0, Lbr/com/topaz/v/c;->e:[Lbr/com/topaz/v/c;

    invoke-virtual {v0}, [Lbr/com/topaz/v/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbr/com/topaz/v/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/v/c;->a:I

    return v0
.end method
