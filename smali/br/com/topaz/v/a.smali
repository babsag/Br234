.class public final enum Lbr/com/topaz/v/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbr/com/topaz/v/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lbr/com/topaz/v/a;

.field public static final enum c:Lbr/com/topaz/v/a;

.field public static final enum d:Lbr/com/topaz/v/a;

.field private static final synthetic e:[Lbr/com/topaz/v/a;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lbr/com/topaz/v/a;

    const-string v1, "MISSING_CONFIGURATION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lbr/com/topaz/v/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbr/com/topaz/v/a;->b:Lbr/com/topaz/v/a;

    new-instance v1, Lbr/com/topaz/v/a;

    const-string v4, "GEO_LOCATION_DISABLED"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lbr/com/topaz/v/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbr/com/topaz/v/a;->c:Lbr/com/topaz/v/a;

    new-instance v4, Lbr/com/topaz/v/a;

    const-string v6, "GEO_LOCATION_ENABLED"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lbr/com/topaz/v/a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lbr/com/topaz/v/a;->d:Lbr/com/topaz/v/a;

    new-array v6, v7, [Lbr/com/topaz/v/a;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lbr/com/topaz/v/a;->e:[Lbr/com/topaz/v/a;

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

    iput p3, p0, Lbr/com/topaz/v/a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbr/com/topaz/v/a;
    .locals 1

    const-class v0, Lbr/com/topaz/v/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbr/com/topaz/v/a;

    return-object p0
.end method

.method public static values()[Lbr/com/topaz/v/a;
    .locals 1

    sget-object v0, Lbr/com/topaz/v/a;->e:[Lbr/com/topaz/v/a;

    invoke-virtual {v0}, [Lbr/com/topaz/v/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbr/com/topaz/v/a;

    return-object v0
.end method
