.class public final enum Lcom/ca/mas/foundation/MASGrantProvider;
.super Ljava/lang/Enum;
.source "MASGrantProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ca/mas/foundation/MASGrantProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ca/mas/foundation/MASGrantProvider;

.field public static final enum CLIENT_CREDENTIALS:Lcom/ca/mas/foundation/MASGrantProvider;

.field public static final enum PASSWORD:Lcom/ca/mas/foundation/MASGrantProvider;


# instance fields
.field private final getCredentials:Lcom/ca/mas/core/util/Functions$Unary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ca/mas/core/util/Functions$Unary<",
            "Lcom/ca/mas/foundation/MASAuthCredentials;",
            "Lcom/ca/mas/core/context/MssoContext;",
            ">;"
        }
    .end annotation
.end field

.field private final getRegistrationPath:Lcom/ca/mas/core/util/Functions$Unary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ca/mas/core/util/Functions$Unary<",
            "Ljava/net/URI;",
            "Lcom/ca/mas/core/context/MssoContext;",
            ">;"
        }
    .end annotation
.end field

.field private final isSessionSupported:Lcom/ca/mas/core/util/Functions$Nullary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ca/mas/core/util/Functions$Nullary<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lcom/ca/mas/foundation/MASGrantProvider;

    new-instance v3, Lcom/ca/mas/foundation/MASGrantProvider$a;

    invoke-direct {v3}, Lcom/ca/mas/foundation/MASGrantProvider$a;-><init>()V

    new-instance v4, Lcom/ca/mas/foundation/MASGrantProvider$b;

    invoke-direct {v4}, Lcom/ca/mas/foundation/MASGrantProvider$b;-><init>()V

    new-instance v5, Lcom/ca/mas/foundation/MASGrantProvider$c;

    invoke-direct {v5}, Lcom/ca/mas/foundation/MASGrantProvider$c;-><init>()V

    const-string v1, "PASSWORD"

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ca/mas/foundation/MASGrantProvider;-><init>(Ljava/lang/String;ILcom/ca/mas/core/util/Functions$Unary;Lcom/ca/mas/core/util/Functions$Unary;Lcom/ca/mas/core/util/Functions$Nullary;)V

    sput-object v6, Lcom/ca/mas/foundation/MASGrantProvider;->PASSWORD:Lcom/ca/mas/foundation/MASGrantProvider;

    .line 2
    new-instance v0, Lcom/ca/mas/foundation/MASGrantProvider;

    new-instance v10, Lcom/ca/mas/foundation/MASGrantProvider$d;

    invoke-direct {v10}, Lcom/ca/mas/foundation/MASGrantProvider$d;-><init>()V

    new-instance v11, Lcom/ca/mas/foundation/MASGrantProvider$e;

    invoke-direct {v11}, Lcom/ca/mas/foundation/MASGrantProvider$e;-><init>()V

    new-instance v12, Lcom/ca/mas/foundation/MASGrantProvider$f;

    invoke-direct {v12}, Lcom/ca/mas/foundation/MASGrantProvider$f;-><init>()V

    const-string v8, "CLIENT_CREDENTIALS"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ca/mas/foundation/MASGrantProvider;-><init>(Ljava/lang/String;ILcom/ca/mas/core/util/Functions$Unary;Lcom/ca/mas/core/util/Functions$Unary;Lcom/ca/mas/core/util/Functions$Nullary;)V

    sput-object v0, Lcom/ca/mas/foundation/MASGrantProvider;->CLIENT_CREDENTIALS:Lcom/ca/mas/foundation/MASGrantProvider;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/ca/mas/foundation/MASGrantProvider;

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 3
    sput-object v1, Lcom/ca/mas/foundation/MASGrantProvider;->$VALUES:[Lcom/ca/mas/foundation/MASGrantProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/ca/mas/core/util/Functions$Unary;Lcom/ca/mas/core/util/Functions$Unary;Lcom/ca/mas/core/util/Functions$Nullary;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/core/util/Functions$Unary<",
            "Lcom/ca/mas/foundation/MASAuthCredentials;",
            "Lcom/ca/mas/core/context/MssoContext;",
            ">;",
            "Lcom/ca/mas/core/util/Functions$Unary<",
            "Ljava/net/URI;",
            "Lcom/ca/mas/core/context/MssoContext;",
            ">;",
            "Lcom/ca/mas/core/util/Functions$Nullary<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/ca/mas/foundation/MASGrantProvider;->getCredentials:Lcom/ca/mas/core/util/Functions$Unary;

    .line 3
    iput-object p4, p0, Lcom/ca/mas/foundation/MASGrantProvider;->getRegistrationPath:Lcom/ca/mas/core/util/Functions$Unary;

    .line 4
    iput-object p5, p0, Lcom/ca/mas/foundation/MASGrantProvider;->isSessionSupported:Lcom/ca/mas/core/util/Functions$Nullary;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ca/mas/foundation/MASGrantProvider;
    .locals 1

    .line 1
    const-class v0, Lcom/ca/mas/foundation/MASGrantProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/foundation/MASGrantProvider;

    return-object p0
.end method

.method public static values()[Lcom/ca/mas/foundation/MASGrantProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/foundation/MASGrantProvider;->$VALUES:[Lcom/ca/mas/foundation/MASGrantProvider;

    invoke-virtual {v0}, [Lcom/ca/mas/foundation/MASGrantProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ca/mas/foundation/MASGrantProvider;

    return-object v0
.end method


# virtual methods
.method public getCredentials(Lcom/ca/mas/core/context/MssoContext;)Lcom/ca/mas/foundation/MASAuthCredentials;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGrantProvider;->getCredentials:Lcom/ca/mas/core/util/Functions$Unary;

    invoke-interface {v0, p1}, Lcom/ca/mas/core/util/Functions$Unary;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ca/mas/foundation/MASAuthCredentials;

    return-object p1
.end method

.method public getRegistrationPath(Lcom/ca/mas/core/context/MssoContext;)Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGrantProvider;->getRegistrationPath:Lcom/ca/mas/core/util/Functions$Unary;

    invoke-interface {v0, p1}, Lcom/ca/mas/core/util/Functions$Unary;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URI;

    return-object p1
.end method

.method public isSessionSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASGrantProvider;->isSessionSupported:Lcom/ca/mas/core/util/Functions$Nullary;

    invoke-interface {v0}, Lcom/ca/mas/core/util/Functions$Nullary;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
