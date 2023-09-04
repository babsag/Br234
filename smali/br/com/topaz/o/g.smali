.class public final enum Lbr/com/topaz/o/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbr/com/topaz/o/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lbr/com/topaz/o/g;

.field public static final enum c:Lbr/com/topaz/o/g;

.field public static final enum d:Lbr/com/topaz/o/g;

.field private static final synthetic e:[Lbr/com/topaz/o/g;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lbr/com/topaz/o/g;

    const-string v1, "ANDROID_MANIFEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbr/com/topaz/o/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbr/com/topaz/o/g;->b:Lbr/com/topaz/o/g;

    new-instance v1, Lbr/com/topaz/o/g;

    const-string v3, "ENVIRONMENT_VARS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lbr/com/topaz/o/g;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbr/com/topaz/o/g;->c:Lbr/com/topaz/o/g;

    new-instance v3, Lbr/com/topaz/o/g;

    const-string v5, "MEMORY_MAPS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lbr/com/topaz/o/g;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lbr/com/topaz/o/g;->d:Lbr/com/topaz/o/g;

    const/4 v5, 0x3

    new-array v5, v5, [Lbr/com/topaz/o/g;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lbr/com/topaz/o/g;->e:[Lbr/com/topaz/o/g;

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

    iput p3, p0, Lbr/com/topaz/o/g;->a:I

    return-void
.end method

.method public static a(I)Lbr/com/topaz/o/g;
    .locals 5

    invoke-static {}, Lbr/com/topaz/o/g;->values()[Lbr/com/topaz/o/g;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lbr/com/topaz/o/g;->a:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lbr/com/topaz/o/g;
    .locals 1

    const-class v0, Lbr/com/topaz/o/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbr/com/topaz/o/g;

    return-object p0
.end method

.method public static values()[Lbr/com/topaz/o/g;
    .locals 1

    sget-object v0, Lbr/com/topaz/o/g;->e:[Lbr/com/topaz/o/g;

    invoke-virtual {v0}, [Lbr/com/topaz/o/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbr/com/topaz/o/g;

    return-object v0
.end method
