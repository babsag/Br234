.class final enum Lbr/com/topaz/g0/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr/com/topaz/g0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbr/com/topaz/g0/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lbr/com/topaz/g0/c$a;

.field public static final enum c:Lbr/com/topaz/g0/c$a;

.field public static final enum d:Lbr/com/topaz/g0/c$a;

.field public static final enum e:Lbr/com/topaz/g0/c$a;

.field private static final synthetic f:[Lbr/com/topaz/g0/c$a;


# instance fields
.field public a:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lbr/com/topaz/g0/c$a;

    const-class v1, Lbr/com/topaz/heartbeat/service/EventWorker;

    const-string v2, "Event"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lbr/com/topaz/g0/c$a;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lbr/com/topaz/g0/c$a;->b:Lbr/com/topaz/g0/c$a;

    new-instance v1, Lbr/com/topaz/g0/c$a;

    const-class v2, Lbr/com/topaz/heartbeat/service/ClientEventWorker;

    const-string v4, "ClientEvent"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lbr/com/topaz/g0/c$a;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lbr/com/topaz/g0/c$a;->c:Lbr/com/topaz/g0/c$a;

    new-instance v2, Lbr/com/topaz/g0/c$a;

    const-class v4, Lbr/com/topaz/heartbeat/service/ScanAppsWorker;

    const-string v6, "ScanApps"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lbr/com/topaz/g0/c$a;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Lbr/com/topaz/g0/c$a;->d:Lbr/com/topaz/g0/c$a;

    new-instance v4, Lbr/com/topaz/g0/c$a;

    const-class v6, Lbr/com/topaz/heartbeat/service/UpdateWorker;

    const-string v8, "Update"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lbr/com/topaz/g0/c$a;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v4, Lbr/com/topaz/g0/c$a;->e:Lbr/com/topaz/g0/c$a;

    const/4 v6, 0x4

    new-array v6, v6, [Lbr/com/topaz/g0/c$a;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lbr/com/topaz/g0/c$a;->f:[Lbr/com/topaz/g0/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lbr/com/topaz/g0/c$a;->a:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbr/com/topaz/g0/c$a;
    .locals 1

    const-class v0, Lbr/com/topaz/g0/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbr/com/topaz/g0/c$a;

    return-object p0
.end method

.method public static values()[Lbr/com/topaz/g0/c$a;
    .locals 1

    sget-object v0, Lbr/com/topaz/g0/c$a;->f:[Lbr/com/topaz/g0/c$a;

    invoke-virtual {v0}, [Lbr/com/topaz/g0/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbr/com/topaz/g0/c$a;

    return-object v0
.end method
