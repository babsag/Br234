.class public final enum Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;
.super Ljava/lang/Enum;
.source "Report.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/report/model/Report;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

.field public static final enum JAVA:Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

.field public static final enum NATIVE:Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    const-string v1, "JAVA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;->JAVA:Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    .line 2
    new-instance v1, Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    const-string v3, "NATIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;->NATIVE:Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;->$VALUES:[Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;->$VALUES:[Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    invoke-virtual {v0}, [Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/crashlytics/internal/report/model/Report$Type;

    return-object v0
.end method
