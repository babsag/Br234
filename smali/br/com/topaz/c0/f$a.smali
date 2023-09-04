.class public final enum Lbr/com/topaz/c0/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/c0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbr/com/topaz/c0/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbr/com/topaz/c0/f$a;

.field public static final enum b:Lbr/com/topaz/c0/f$a;

.field private static final synthetic c:[Lbr/com/topaz/c0/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbr/com/topaz/c0/f$a;

    const-string v1, "SHA256"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbr/com/topaz/c0/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbr/com/topaz/c0/f$a;->a:Lbr/com/topaz/c0/f$a;

    new-instance v1, Lbr/com/topaz/c0/f$a;

    const-string v3, "MD5"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbr/com/topaz/c0/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbr/com/topaz/c0/f$a;->b:Lbr/com/topaz/c0/f$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lbr/com/topaz/c0/f$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lbr/com/topaz/c0/f$a;->c:[Lbr/com/topaz/c0/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbr/com/topaz/c0/f$a;
    .locals 1

    const-class v0, Lbr/com/topaz/c0/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbr/com/topaz/c0/f$a;

    return-object p0
.end method

.method public static values()[Lbr/com/topaz/c0/f$a;
    .locals 1

    sget-object v0, Lbr/com/topaz/c0/f$a;->c:[Lbr/com/topaz/c0/f$a;

    invoke-virtual {v0}, [Lbr/com/topaz/c0/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbr/com/topaz/c0/f$a;

    return-object v0
.end method
