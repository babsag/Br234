.class public final enum Lcom/manateeworks/ScannerActivity$State;
.super Ljava/lang/Enum;
.source "ScannerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manateeworks/ScannerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/manateeworks/ScannerActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/manateeworks/ScannerActivity$State;

.field public static final enum DECODING:Lcom/manateeworks/ScannerActivity$State;

.field public static final enum PREVIEW:Lcom/manateeworks/ScannerActivity$State;

.field public static final enum STOPPED:Lcom/manateeworks/ScannerActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/manateeworks/ScannerActivity$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/manateeworks/ScannerActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/manateeworks/ScannerActivity$State;->STOPPED:Lcom/manateeworks/ScannerActivity$State;

    new-instance v1, Lcom/manateeworks/ScannerActivity$State;

    const-string v3, "PREVIEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/manateeworks/ScannerActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/manateeworks/ScannerActivity$State;->PREVIEW:Lcom/manateeworks/ScannerActivity$State;

    new-instance v3, Lcom/manateeworks/ScannerActivity$State;

    const-string v5, "DECODING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/manateeworks/ScannerActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/manateeworks/ScannerActivity$State;->DECODING:Lcom/manateeworks/ScannerActivity$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/manateeworks/ScannerActivity$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/manateeworks/ScannerActivity$State;->$VALUES:[Lcom/manateeworks/ScannerActivity$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/manateeworks/ScannerActivity$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/manateeworks/ScannerActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/manateeworks/ScannerActivity$State;

    return-object p0
.end method

.method public static values()[Lcom/manateeworks/ScannerActivity$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/manateeworks/ScannerActivity$State;->$VALUES:[Lcom/manateeworks/ScannerActivity$State;

    invoke-virtual {v0}, [Lcom/manateeworks/ScannerActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/manateeworks/ScannerActivity$State;

    return-object v0
.end method
