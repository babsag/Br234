.class public final enum Lbr/com/topaz/g0/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/g0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbr/com/topaz/g0/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbr/com/topaz/g0/b$a;

.field public static final enum b:Lbr/com/topaz/g0/b$a;

.field public static final enum c:Lbr/com/topaz/g0/b$a;

.field public static final enum d:Lbr/com/topaz/g0/b$a;

.field private static final synthetic e:[Lbr/com/topaz/g0/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lbr/com/topaz/g0/b$a;

    const-string v1, "Event"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbr/com/topaz/g0/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbr/com/topaz/g0/b$a;->a:Lbr/com/topaz/g0/b$a;

    new-instance v1, Lbr/com/topaz/g0/b$a;

    const-string v3, "ClientEvent"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lbr/com/topaz/g0/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbr/com/topaz/g0/b$a;->b:Lbr/com/topaz/g0/b$a;

    new-instance v3, Lbr/com/topaz/g0/b$a;

    const-string v5, "ScanApps"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lbr/com/topaz/g0/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lbr/com/topaz/g0/b$a;->c:Lbr/com/topaz/g0/b$a;

    new-instance v5, Lbr/com/topaz/g0/b$a;

    const-string v7, "Update"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lbr/com/topaz/g0/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lbr/com/topaz/g0/b$a;->d:Lbr/com/topaz/g0/b$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lbr/com/topaz/g0/b$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lbr/com/topaz/g0/b$a;->e:[Lbr/com/topaz/g0/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbr/com/topaz/g0/b$a;
    .locals 1

    const-class v0, Lbr/com/topaz/g0/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbr/com/topaz/g0/b$a;

    return-object p0
.end method

.method public static values()[Lbr/com/topaz/g0/b$a;
    .locals 1

    sget-object v0, Lbr/com/topaz/g0/b$a;->e:[Lbr/com/topaz/g0/b$a;

    invoke-virtual {v0}, [Lbr/com/topaz/g0/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbr/com/topaz/g0/b$a;

    return-object v0
.end method
