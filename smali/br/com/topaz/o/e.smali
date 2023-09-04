.class public final enum Lbr/com/topaz/o/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbr/com/topaz/o/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lbr/com/topaz/o/e;

.field private static final synthetic c:[Lbr/com/topaz/o/e;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lbr/com/topaz/o/e;

    const-string v1, "BASE_64_ENCODED_STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbr/com/topaz/o/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbr/com/topaz/o/e;->b:Lbr/com/topaz/o/e;

    const/4 v1, 0x1

    new-array v1, v1, [Lbr/com/topaz/o/e;

    aput-object v0, v1, v2

    sput-object v1, Lbr/com/topaz/o/e;->c:[Lbr/com/topaz/o/e;

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

    iput p3, p0, Lbr/com/topaz/o/e;->a:I

    return-void
.end method

.method public static a(I)Lbr/com/topaz/o/e;
    .locals 5

    invoke-static {}, Lbr/com/topaz/o/e;->values()[Lbr/com/topaz/o/e;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lbr/com/topaz/o/e;->a:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lbr/com/topaz/o/e;
    .locals 1

    const-class v0, Lbr/com/topaz/o/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbr/com/topaz/o/e;

    return-object p0
.end method

.method public static values()[Lbr/com/topaz/o/e;
    .locals 1

    sget-object v0, Lbr/com/topaz/o/e;->c:[Lbr/com/topaz/o/e;

    invoke-virtual {v0}, [Lbr/com/topaz/o/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbr/com/topaz/o/e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lbr/com/topaz/o/e;->a:I

    return v0
.end method
