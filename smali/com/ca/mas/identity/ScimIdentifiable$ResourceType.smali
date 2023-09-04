.class public final enum Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;
.super Ljava/lang/Enum;
.source "ScimIdentifiable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/identity/ScimIdentifiable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;

.field public static final enum Application:Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;

.field public static final enum Device:Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;

.field public static final enum None:Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;

.field public static final enum User:Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;

    const-string v1, "User"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;->User:Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;

    new-instance v1, Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;

    const-string v3, "Device"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;->Device:Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;

    new-instance v3, Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;

    const-string v5, "Application"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;->Application:Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;

    new-instance v5, Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;

    const-string v7, "None"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;->None:Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;->$VALUES:[Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;
    .locals 1

    .line 1
    const-class v0, Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;

    return-object p0
.end method

.method public static values()[Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;->$VALUES:[Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;

    invoke-virtual {v0}, [Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ca/mas/identity/ScimIdentifiable$ResourceType;

    return-object v0
.end method
