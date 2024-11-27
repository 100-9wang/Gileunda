package dao;

import java.util.ArrayList;

public class PlantDAO {

	
	private ArrayList<Plant> listOfPlants = new ArrayList<Plant>();
	private static PlantDAO instance = new PlantDAO();
	
	public static PlantDAO getInstance() {
		return instance;
	}
	
	public void addPlant(Plant plant) {
		listOfPlants.add(plant);
	}
	
	public PlantDAO () {
		Plant plant1 = new Plant("p-1", "몬스테라", 10000);
		plant1.setPtInfo("몬스테라(Monstera deliciosa)는 천남성과의 상록 덩굴식물이다. "
				+ "멕시코 남부에서 파나마에 이르는 열대 지역이 원산지이며 온대 지역에선 온실이나 "
				+ "비닐하우스에서 실내 화초로 키운다. 9m까지 자라는 몬스테라는 영어의 monstrous에서 따온"
				+ " 이름으로, 괴물처럼 거대하다는 뜻을 담고 있다.");
		plant1.setPtHeight("3m ~ 20m");
		plant1.setPtCategory("다육 식물");
		plant1.setPtUnit(100);
		plant1.setPtdifficulty("상");
		
		
		Plant plant2 = new Plant("p-2", "스킨답서스", 12000);
		plant2.setPtInfo("악마의 포도나무, 사냥꾼의 의복, 머니 플랜트, 솔로몬 제도의 담쟁이덩굴, "
				+ "악마의 담쟁이덩굴"
				+ "스킨답서스(Epipremnum aureum)은 세계에서 가장 인기 있는 화초로, 대한민국에서는 국민 화초라고 불릴 정도로 많이 키웁니다. "
				+ "키우기가 쉬워 입문자에게 좋습니다. 스킨답서스는 공기 정화 효과도 있지만 생명력과 번식력이 강해 야생에서는 생태계를 파괴하는 주범으로 여겨지기도 해, "
				+ "일부 지역에서는 '악마의 덩굴(Devil's ivy)'라고 이름까지 붙였다고 합니다. 또한 독성이 있으니 절대로 식용해서는 안 되는 식물입니다.");
		plant2.setPtHeight("30cm ~ 20m");
		plant2.setPtCategory("관엽 식물");
		plant2.setPtUnit(200);
		plant2.setPtdifficulty("하");
		
		Plant plant3 = new Plant("p-3", "필로덴드론 핑크 프린세스", 80000);
		plant3.setPtInfo("필로덴드론 핑크프린세스은 아주 귀한 실내 식물 중 하나이다. 일반 식물처럼 씨앗을 심거나 꺾꽂이를 해서 재배하는 것이 아니라 실험실에서 조직을 배양해 재배한다. "
				+ "잎의 아름다운 분홍색 얼룩이 특징인데, 일반적인 방식으로 키워서는 얼룩이 나오지 않는 경우가 많다. "
				+ "인기가 너무 많아지자 전혀 다른 식물을 비슷한 식물이라며 속여 파는 경우가 생기기도 했다.");
		plant3.setPtHeight("40cm ~ 60cm");
		plant3.setPtCategory("관엽 식물");
		plant3.setPtUnit(50);
		plant3.setPtdifficulty("하");	
		
		listOfPlants.add(plant1);
		listOfPlants.add(plant2);
		listOfPlants.add(plant3);
		
		
	}
	
	// 식물 값 가져오기
	public ArrayList<Plant> getAllPlants() {
		return listOfPlants;
	}
	
	// 식물 코드
	public Plant getPlantById(String plantId) {
		Plant plantByID = null;
		
		for(int i = 0; i < listOfPlants.size(); i++) {
			Plant plant = listOfPlants.get(i);
			if(plant != null && plant.getPtID() != null &&
					plant.getPtID().equals(plantId)) {
				plantByID = plant;
				break;
			} else { 
				if(plant == null) {
					System.out.println("id값 null");
					break;
				}
			}
		}
		return plantByID;
	}
}
