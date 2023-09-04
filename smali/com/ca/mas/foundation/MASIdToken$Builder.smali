.class public Lcom/ca/mas/foundation/MASIdToken$Builder;
.super Ljava/lang/Object;
.source "MASIdToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/foundation/MASIdToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "urn:ietf:params:oauth:grant-type:jwt-bearer"

    .line 2
    iput-object v0, p0, Lcom/ca/mas/foundation/MASIdToken$Builder;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/ca/mas/foundation/MASIdToken;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ca/mas/foundation/MASIdToken$Builder;->a:Ljava/lang/String;

    const-string v1, "Token value cannot be null."

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/ca/mas/foundation/MASIdToken;

    iget-object v1, p0, Lcom/ca/mas/foundation/MASIdToken$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/ca/mas/foundation/MASIdToken$Builder;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ca/mas/foundation/MASIdToken;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ca/mas/foundation/MASIdToken$a;)V

    return-object v0
.end method

.method public type(Ljava/lang/String;)Lcom/ca/mas/foundation/MASIdToken$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASIdToken$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public value(Ljava/lang/String;)Lcom/ca/mas/foundation/MASIdToken$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/foundation/MASIdToken$Builder;->a:Ljava/lang/String;

    return-object p0
.end method
